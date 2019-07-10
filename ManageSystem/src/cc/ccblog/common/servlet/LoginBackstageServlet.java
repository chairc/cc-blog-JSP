package cc.ccblog.common.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;


@WebServlet("/LoginBackstageServlet")
@SuppressWarnings("serial")
public class LoginBackstageServlet extends HttpServlet {//需要继承HttpServlet  并重写doGet  doPost方法
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request,response);  //将信息使用doPost方法执行   对应jsp页面中的form表单中的method
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String name=(String)session.getAttribute("username");
		String pwd=(String)session.getAttribute("password");
		
		UserDao ud = new UserDaoImpl();
		if(name!=null) {
			if(ud.login(name, pwd)) {
				if(name.equals("admin"))//后期用权重表示
				{
					
					request.getRequestDispatcher("/jsp/backstage/Success_new.jsp").forward(request, response);//转发到成功页面
				}else {
					
					request.getRequestDispatcher("/jsp/backstage/UserSuccess_new.jsp").forward(request, response);//转发到成功页面
				}
				
			}else{	
				response.getWriter().print("<script>alert('Alert:Incorrect information verification!');window.location.href='showinfo';</script>");

//				response.sendRedirect("showinfo"); //重定向到首页			
			}
		}else {
			response.sendRedirect("showinfo");
		}
		
	}
}
