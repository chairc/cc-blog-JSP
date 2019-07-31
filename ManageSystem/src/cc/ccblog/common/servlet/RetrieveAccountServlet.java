/**
 *
 * @author GitHub ID : chairc
 *
 */
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

@WebServlet("/RetrieveAccountServlet")
@SuppressWarnings("serial")
public class RetrieveAccountServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String selectfindway = new String(request.getParameter("selectfindway").getBytes("ISO-8859-1"),"utf-8");
		String findway = new String(request.getParameter("findway").getBytes("ISO-8859-1"),"utf-8"); 
		String safequestion = new String(request.getParameter("safequestion").getBytes("ISO-8859-1"),"utf-8");
		String safeanswer = new String(request.getParameter("safeanswer").getBytes("ISO-8859-1"),"utf-8");
		
		UserDao ud = new UserDaoImpl();
		
		List<User> s= ud.retrieveaccount(selectfindway,findway,safequestion,safeanswer);
		request.setAttribute("retrieveaccount", s);
		request.getRequestDispatcher("/jsp/basic/RetrieveAccount.jsp").forward(request, response);
		
		System.out.println("--------------\n" + findway + "找回账号\n"+ "状态：成功1条\n" + "--------------");
	}
}

