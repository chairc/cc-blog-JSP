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

import com.sun.javafx.scene.web.Debugger;
import com.sun.org.apache.xml.internal.resolver.helpers.Debug;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
import cc.ccblog.entity.User;

@WebServlet("/UpdateServlet")
@SuppressWarnings("serial")
public class UpdateServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int userId = Integer.parseInt(id);
		
//		String name = request.getParameter("name");
//		String pwd = request.getParameter("pwd");
//		String sex = request.getParameter("sex");
//		String home = request.getParameter("home");
//		String info = request.getParameter("info");
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
		String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"utf-8");
		String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
		String home = new String(request.getParameter("home").getBytes("ISO-8859-1"),"utf-8");
		String info = new String(request.getParameter("info").getBytes("ISO-8859-1"),"utf-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"utf-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO-8859-1"),"utf-8");
		String safequestion = new String(request.getParameter("safequestion").getBytes("ISO-8859-1"),"utf-8");
		String safeanswer = new String(request.getParameter("safeanswer").getBytes("ISO-8859-1"),"utf-8");
		String weight1 = new String(request.getParameter("weight").getBytes("ISO-8859-1"),"utf-8");
		int weight2 = Integer.parseInt(weight1);
		
		User user = new User(); //实例化一个对象，组装属性
		user.setId(userId);
		user.setName(name);
		user.setPwd(pwd);
		user.setSex(sex);
		user.setHome(home);
		user.setInfo(info);
		user.setEmail(email);
		user.setPhone(phone);
		user.setSafequestion(safequestion);
		user.setSafeanswer(safeanswer);
		user.setWeight(weight2);
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.update(user)){
			request.setAttribute("xiaoxi", "更新成功");
			request.getRequestDispatcher("/Editall").forward(request, response);
			
			System.out.println("--------------\n" + "更新1条---------" + "ID" + userId + "更新用户：" + name + "成功" + "\n-------------");
		}else{
			request.setAttribute("xiaoxi", "更新失败");
			request.getRequestDispatcher("/Editall").forward(request, response);
			
			System.out.println("--------------\n" + "更新1条---------" + "ID" + userId + "更新用户：" + name + "失败" + "\n-------------");
		}
	}
}
 
