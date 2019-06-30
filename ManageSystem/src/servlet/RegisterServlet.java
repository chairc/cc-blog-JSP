package servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

@WebServlet("/RegisterServlet")
@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
	
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
		
		User user = new User(); //实例化一个对象，组装属性
		user.setName(name);
		user.setPwd(pwd);
		user.setSex(sex);
		user.setHome(home);
		user.setInfo(info);
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.registevalidation(name))
		{
			if(ud.register(user)){
				request.setAttribute("username", name);  //向request域中放置参数
				//request.setAttribute("xiaoxi", "注册成功");
				request.getRequestDispatcher("/showinfo").forward(request, response);  //转发到登录页面
			}		
		}else{
			
			response.sendRedirect("/jsp/others/Failure_new.jsp");//重定向到首页
		}
	}
}
