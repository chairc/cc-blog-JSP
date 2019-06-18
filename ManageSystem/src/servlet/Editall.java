package servlet;
 

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;
 
@SuppressWarnings("serial")
public class Editall extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		//列表输出
		UserDao ud = new UserDaoImpl();
		List<User> userAll = ud.getUserAll();
		request.setAttribute("userAll", userAll);
		request.getRequestDispatcher("/ShowAll.jsp").forward(request, response);

		
				
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	
}
