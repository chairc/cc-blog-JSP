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

@WebServlet("/Editall")
@SuppressWarnings("serial")
public class Editall extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//列表输出
		String name = (String) request.getSession().getAttribute("username");
		String pwd = (String) request.getSession().getAttribute("password");
		
		UserDao ud = new UserDaoImpl();
		if(ud.login(name, pwd)) {
			
			UserDao udcount = new UserDaoImpl();
			int i = udcount.eapagecount();
			int pagecount = (i + 8 - 1)/8;
			request.getSession().setAttribute("pageall",pagecount);
			
			if(request.getParameter("page")!=null) {
				String page = new String(request.getParameter("page").getBytes("ISO-8859-1"),"utf-8");
				int curPage = Integer.parseInt(page);
				request.getSession().setAttribute("pagenum",page);
				
				UserDao ud1 = new UserDaoImpl();
				List<User> userAll = ud1.getUserAll(curPage);
				request.setAttribute("userAll", userAll);
				request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
				
				System.out.println("--------------\n" + "查找所有用户---------成功\n" + "--------------");

			}
			else {
				String page="1";
				int curPage = 1;
				request.getSession().setAttribute("pagenum",page);
				
				UserDao ud2 = new UserDaoImpl();
				List<User> userAll = ud2.getUserAll(curPage);
				request.setAttribute("userAll", userAll);
				request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
				
				System.out.println("--------------\n" + "查找所有用户---------成功\n" + "--------------");

			}
		}else {
			if(name == null || pwd == null) {
				response.getWriter().print("<script>alert('Alert:Please login......');window.location.href='showinfo';</script>");
				
				System.out.println("--------------\n" + "查找所有用户---------失败\n原因：未登录\n" + "--------------");
			}else {
				response.getWriter().print("<script>alert('Alert:Incorrect information verification!');window.location.href='showinfo';</script>");

				System.out.println("--------------\n" + "查找所有用户---------失败\n原因：信息未验证正确\n" + "--------------");
			}
		}			
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	
}
