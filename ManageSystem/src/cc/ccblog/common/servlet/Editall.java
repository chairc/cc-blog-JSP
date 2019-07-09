package cc.ccblog.common.servlet;
 

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
import cc.ccblog.entity.User;

@WebServlet("/Editall")
@SuppressWarnings("serial")
public class Editall extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//列表输出
		if(request.getParameter("page")!=null) {
			String page = new String(request.getParameter("page").getBytes("ISO-8859-1"),"utf-8");
			int curPage = Integer.parseInt(page);
			request.getSession().setAttribute("pagenum",page);
			
			UserDao ud = new UserDaoImpl();
			List<User> userAll = ud.getUserAll(curPage);
			request.setAttribute("userAll", userAll);
			request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
		}
		else {
			String page="1";
			int curPage = 1;
			request.getSession().setAttribute("pagenum",page);
			
			UserDao ud = new UserDaoImpl();
			List<User> userAll = ud.getUserAll(curPage);
			request.setAttribute("userAll", userAll);
			request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
		}
		
			
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	
}
