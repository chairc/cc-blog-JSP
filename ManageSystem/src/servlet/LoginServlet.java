package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.api.Session;

import dao.UserDao;
import dao.UserDaoImpl;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {//需要继承HttpServlet  并重写doGet  doPost方法
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);  //将信息使用doPost方法执行   对应jsp页面中的form表单中的method
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name"); //得到jsp页面传过来的参数
		String pwd = request.getParameter("pwd");		
		request.getSession().setAttribute("username",name);//将用户名保存在整个会话期间  
		
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.login(name, pwd)){
			if(name.equals("admin"))
			{
				request.setAttribute("xiaoxi", name); //向request域中放置信息
				request.getRequestDispatcher("/Success_new.jsp").forward(request, response);//转发到成功页面
			}else {
				request.setAttribute("xiaoxi", name); //向request域中放置信息
				request.getRequestDispatcher("/UserSuccess_new.jsp").forward(request, response);//转发到成功页面
			}
			
		}else{			
			response.sendRedirect("Failure.jsp"); //重定向到首页			
		}
	}
}
