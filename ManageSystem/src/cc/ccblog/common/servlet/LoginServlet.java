/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.common.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
import cc.ccblog.entity.User;
import nl.bitwalker.useragentutils.Browser;
import nl.bitwalker.useragentutils.OperatingSystem;
import nl.bitwalker.useragentutils.UserAgent;

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
	
	  
	    String ua = request.getHeader("User-Agent");//获取浏览器信息	    
	    UserAgent userAgent = UserAgent.parseUserAgentString(ua); //转成UserAgent对象	    
	    Browser browser = userAgent.getBrowser();  //获取浏览器信息	    
	    OperatingSystem os = userAgent.getOperatingSystem();//获取系统信息    
	    String system = os.getName();//系统名称	    
	    String browsername = browser.getName();//浏览器名称

	    /*
	         *  将信息保存在整个会话期间，关闭网页后自动销毁
	     */
		request.getSession().setAttribute("username",name);
		request.getSession().setAttribute("password", pwd);
	    request.getSession().setAttribute("ipaddress",ip);
	    request.getSession().setAttribute("system",system);
	    request.getSession().setAttribute("browsername",browsername);
	    
	    
	    UserDao ud = new UserDaoImpl();
		
	    
		if(ud.login(name, pwd)){//进行登录判断
			if(ud.Searchsafetyverification(name)) {
				
				System.out.println("--------------\n" + "登录人员：" + name + "\n时间" + servertime + "\n获取客户端ip: " + ip +"\n"+ "登录状态：成功\n" + "系统：" + system + "\n浏览器：" + browsername + "\n--------------");
				
				String whichsystem = (String)request.getSession().getAttribute("system");
				String whichbrowser = (String)request.getSession().getAttribute("browsername");
				System.out.println(whichsystem + whichbrowser);
				ud.loginupdate(name,servertime,ip,whichsystem,whichbrowser);//更新登录账户时间、登录日志、系统、浏览器
				if(name.equals("admin"))
				{
					request.setAttribute("xiaoxi", name);
					request.getRequestDispatcher("/ChairC_Index.jsp").forward(request, response);
				}else {
					request.setAttribute("xiaoxi", name);
					request.getRequestDispatcher("/ChairC_Index.jsp").forward(request, response);
				}
			}else {
				
				System.out.println("--------------\n" + "登录人员：" + name + "\n时间" + servertime + "\n获取客户端ip: " + ip +"\n登录状态：失败（需要强制修改信息）\n" + "--------------");
				
				UserDao ud1=new UserDaoImpl();
				List<User> sList = ud1.safetyverification(name);
				request.setAttribute("verification", sList);
				request.getRequestDispatcher("/jsp/verification/SafetyVerification.jsp").forward(request, response);
			}			
		}else{
			
			System.out.println("--------------\n" + "登录人员：" + name + "时间" + servertime + "获取客户端ip: " + ip +"\n"+ "登录状态：失败（用户名或密码无效）\n" + "--------------");

			response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='showinfo';</script>");		
		}
	}
}
