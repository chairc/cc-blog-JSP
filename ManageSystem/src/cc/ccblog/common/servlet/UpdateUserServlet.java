package cc.ccblog.common.servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;

@WebServlet("/UpdateUserServlet")
@SuppressWarnings("serial")
public class UpdateUserServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String id = request.getParameter("id");
//		int userId = Integer.parseInt(id);
//		
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
		
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.updateUser(name, pwd, sex, home, info)){

			request.setAttribute("xiaoxi", "更新成功!");
			request.getRequestDispatcher("/jsp/backstage/IframeIndex.jsp").forward(request, response);
		}else{
			request.setAttribute("xiaoxi", "更新失败！");
			request.getRequestDispatcher("/jsp/backstage/IframeIndex.jsp").forward(request, response);
			//response.sendRedirect("/jsp/others/Failure.jsp");
		}
	}
}
 
