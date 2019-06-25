package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@SuppressWarnings("serial")
public class LoginBackstageServlet extends HttpServlet {//需要继承HttpServlet  并重写doGet  doPost方法
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);  //将信息使用doPost方法执行   对应jsp页面中的form表单中的method
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String name=(String)session.getAttribute("username");
		
		
		if(name!=null) {
			if(name.equals("admin"))
			{
				
				request.getRequestDispatcher("/Success_new.jsp").forward(request, response);//转发到成功页面
			}else {
				
				request.getRequestDispatcher("/UserSuccess_new.jsp").forward(request, response);//转发到成功页面
			}
			
		}else{			
			response.sendRedirect("showinfo"); //重定向到首页			
		}
	}
}
