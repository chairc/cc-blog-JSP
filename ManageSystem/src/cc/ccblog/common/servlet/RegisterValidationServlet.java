package cc.ccblog.common.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;

@WebServlet("/RegisterValidationServlet")
@SuppressWarnings("serial")
public class RegisterValidationServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String vaname = request.getParameter("vasname");
		String vaphone = request.getParameter("vasphone");
		String vaemail = request.getParameter("vasemail");
		
		UserDao ud = new UserDaoImpl();
		
		PrintWriter out = response.getWriter();  
		
//		if(ud.registevalidation1(vaname,vaphone,vaemail))
//		{
//			out.write("true");
//		}else {
//			out.write("false");
//		}	
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
