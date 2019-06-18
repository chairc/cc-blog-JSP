package servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShowInfo;
import dao.ShowInfoImpl;


@SuppressWarnings("serial")
public class EditUpdateServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String messageid = request.getParameter("messageid");
		int m_id = Integer.parseInt(messageid);
		String messagemaintitle = new String(request.getParameter("messagemaintitle").getBytes("ISO-8859-1"),"utf-8");
		String messagetitle = new String(request.getParameter("messagetitle").getBytes("ISO-8859-1"),"utf-8");
		String messageinfo = new String(request.getParameter("messageinfo").getBytes("ISO-8859-1"),"utf-8");
		
		ShowInfo si = new ShowInfoImpl();
		
		if(si.update(m_id,messagemaintitle,messagetitle,messageinfo)){
			request.setAttribute("xiaoxi", "更新成功");
			request.getRequestDispatcher("/Editinfo").forward(request, response);
		}else{
			response.sendRedirect("Failure.jsp");
		}
	}
}
 
