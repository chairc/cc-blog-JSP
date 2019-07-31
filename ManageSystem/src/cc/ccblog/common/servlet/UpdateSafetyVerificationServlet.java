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

@SuppressWarnings("serial")
@WebServlet("/UpdateSafetyVerificationServlet")
public class UpdateSafetyVerificationServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/**
		 * 
		 * 待用ajax修改
		 * 
		 */
		
		String name = new String(request.getParameter("svname").getBytes("ISO-8859-1"),"utf-8");
		String email = new String(request.getParameter("svemail").getBytes("ISO-8859-1"),"utf-8");
		String phone = new String(request.getParameter("svphone").getBytes("ISO-8859-1"),"utf-8");
		String safequestion = new String(request.getParameter("svsafequestion").getBytes("ISO-8859-1"),"utf-8");
		String safeanswer = new String(request.getParameter("svsafeanswer").getBytes("ISO-8859-1"),"utf-8");
		
		System.out.println("------------------------------------"+name);
		
		User user = new User(); //实例化一个对象，组装属性
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setSafequestion(safequestion);
		user.setSafeanswer(safeanswer);
		
		UserDao ud1 = new UserDaoImpl();
		
		/**
		 * 这下面这段代码运行效率太低了！疯狂吐槽！我手撸不出来更优化的了日哦！详情就去UserDaoImpl看！我要哭了
		 */
		String flag = ud1.updatesafetyverification(user);
		if(flag == "allyes") {
			response.getWriter().print("<script>window.location.href='showinfo';</script>");
			
			System.out.println("--------------\n" + name + "强制修改安全信息---------成功\n" + "--------------");
		}else if(flag == "phoneerror") {
			response.getWriter().print("<script>alert('Alert:phone is wrong......');window.history.back(-1);</script>");
			
			System.out.println("--------------\n" + name + "强制修改安全信息---------失败\n原因：电话错误\n" + "--------------");
		}else if (flag == "emailerror") {
			response.getWriter().print("<script>alert('Alert:email is wrong......');window.history.back(-1);</script>");
		
			System.out.println("--------------\n" + name + "强制修改安全信息---------失败\n原因：email错误\n" + "--------------");
		}else {
			response.getWriter().print("<script>alert('Alert:email and phone is wrong......');window.history.back(-1);</script>");
		
			System.out.println("--------------\n" + name + "强制修改安全信息---------失败\n原因：email和电话错误\n" + "--------------");
		}
		
	}
}
