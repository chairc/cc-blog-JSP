package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.api.Session;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

@WebServlet("/LoginServlet")
@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {//需要继承HttpServlet  并重写doGet  doPost方法
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);  //将信息使用doPost方法执行   对应jsp页面中的form表单中的method
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8"); //得到jsp页面传过来的参数
		String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"utf-8");
		
		String servertime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());//获取登录时间
		
		request.getSession().setAttribute("username",name);//将用户名保存在整个会话期间  
		
		
		String ip = request.getHeader("x-forwarded-for"); 
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	    	ip = request.getHeader("Proxy-Client-IP"); 
	    } 
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	    	ip = request.getHeader("WL-Proxy-Client-IP"); 
	    } 
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	    	ip = request.getHeader("HTTP_CLIENT_IP"); 
	    } 
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	    	ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
	    } 
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	    	ip = request.getRemoteAddr(); 
	    }
	    if (ip != null && ip.length() > 0){
	    	String[] ips = ip.split(",");
	    	for(int i=0;i<ips.length;i++){
	    		if(ips[i].trim().length() > 0 && !"unknown".equalsIgnoreCase(ips[i].trim())){
	    			ip = ips[i].trim();
	    			break;
	    		}
	    	}
	    }
	    System.out.println("获取客户端ip: " + ip);
	    request.getSession().setAttribute("ipaddress",ip);
		
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.login(name, pwd)){//进行登录判断
			ud.logintime(name, servertime,ip);//更新登录账户时间和登录日志
			if(name.equals("admin"))
			{
				request.setAttribute("xiaoxi", name); //向request域中放置信息
				request.getRequestDispatcher("/ChairC_Index.jsp").forward(request, response);//转发到成功页面
			}else {
				request.setAttribute("xiaoxi", name); //向request域中放置信息
				request.getRequestDispatcher("/ChairC_Index.jsp").forward(request, response);//转发到成功页面
			}
			
		}else{
			request.setAttribute("xiaoxi", "登录失败！");
			request.getRequestDispatcher("jsp/others/Failure_new.jsp").forward(request, response);
			//response.sendRedirect("jsp/others/Failure.jsp"); //重定向到首页			
		}
	}
}
