package servlet;
 

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;
 
@SuppressWarnings("serial")
public class SearchLoginLogServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String s =(String) request.getSession().getAttribute("username");//获取session中的用户名数据
		//列表输出
		if(request.getParameter("page")!=null) {
			String page = new String(request.getParameter("page").getBytes("ISO-8859-1"),"utf-8");
			int curPage = Integer.parseInt(page);
			request.getSession().setAttribute("pagenum",page);
			
			UserDao ud = new UserDaoImpl();
			List<User> userLogAll = ud.getUserLogAll(s,curPage);
			request.setAttribute("userLogAll", userLogAll);
			request.getRequestDispatcher("/SearchLoginLog.jsp").forward(request, response);
		}else {
			String page="1";
			int curPage = 1;
			request.getSession().setAttribute("pagenum",page);
			
			UserDao ud = new UserDaoImpl();
			List<User> userLogAll = ud.getUserLogAll(s,curPage);
			request.setAttribute("userLogAll", userLogAll);
			request.getRequestDispatcher("/SearchLoginLog.jsp").forward(request, response);
		}
		

		
				
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	
}
