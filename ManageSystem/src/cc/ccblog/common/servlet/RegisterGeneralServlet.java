/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.common.servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
import cc.ccblog.entity.User;

@WebServlet("/RegisterGeneralServlet")
@SuppressWarnings("serial")
public class RegisterGeneralServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8"); //获取jsp页面传过来的参数
		String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"utf-8");
		String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
		String home = new String(request.getParameter("home").getBytes("ISO-8859-1"),"utf-8");
		String info = new String(request.getParameter("info").getBytes("ISO-8859-1"),"utf-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"utf-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"),"utf-8");
		String safequestion = new String(request.getParameter("safequestion").getBytes("ISO-8859-1"),"utf-8");
		String safeanswer = new String(request.getParameter("safeanswer").getBytes("ISO-8859-1"),"utf-8");
		
		User user = new User(); //实例化一个对象，组装属性
		user.setName(name);
		user.setPwd(pwd);
		user.setSex(sex);
		user.setHome(home);
		user.setInfo(info);
		user.setEmail(email);
		user.setPhone(phone);
		user.setSafequestion(safequestion);
		user.setSafeanswer(safeanswer);
		
		UserDao ud = new UserDaoImpl();
		
		
		/**
		 * 这下面这段代码运行效率太低了！疯狂吐槽！我手撸不出来更优化的了日哦！详情就去UserDaoImpl看！我要哭了
		 */
		String flag = ud.registevalidation(user);
		if(flag == "allyes")
		{
			if(ud.register(user)){
				
				System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：成功\n" + "--------------");
				
				request.setAttribute("username", name);  //向request域中放置参数
				response.getWriter().print("<script>window.opener=null;window.open('','_self');window.close();</script>");				
			}else {
				System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：失败\n" + "--------------");
				
				response.getWriter().print("<script>alert('Alert:Please add text correctly!');window.history.back(-1);</script>");
			}	
		}else if(flag == "nameerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：用户名重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Username is not unique!');window.history.back(-1);</script>");
		}else if(flag == "emailerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：邮箱重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Email is not unique!');window.history.back(-1);</script>");
		}else if(flag == "phoneerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：电话重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Phone is not unique!');window.history.back(-1);</script>");
		}else if(flag == "nameemailerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：用户名和邮箱重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Username and email are not unique!');window.history.back(-1);</script>");
		}else if(flag == "namephoneerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：用户名和电话重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Username and phone are not unique!');window.history.back(-1);</script>");
		}else if(flag == "emailphoneerror") {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：邮箱和电话重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Email and phone are not unique!');window.history.back(-1);</script>");
		}else {
			System.out.println("--------------\n" + "注册人员：" + name +"\n"+ "注册状态：全部重复\n" + "--------------");
			
			response.getWriter().print("<script>alert('Alert:Email , email and phone are not unique!');window.history.back(-1);</script>");
		}
	}
}

