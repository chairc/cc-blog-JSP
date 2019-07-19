package cc.ccblog.common.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
@SuppressWarnings("serial")
public class LogoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name =(String)request.getSession().getAttribute("username");		

		System.out.println("--------------\n" + "登录后台登出---------成功\n"+ "用户：" + name + "\n--------------");

		HttpSession session = request.getSession();
		session.removeAttribute("username");		//删除session中存储的用户名和密码
		session.removeAttribute("password");
		response.sendRedirect("ChairC_Index.jsp");
	}
}
