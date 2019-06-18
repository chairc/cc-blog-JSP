package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShowInfo;
import dao.ShowInfoImpl;
import entity.MessageInfo;


@SuppressWarnings("serial")
public class AddMessageServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String addmessagename=new String(request.getParameter("addmessagename").getBytes("ISO-8859-1"),"utf-8");		
		String addmessageinfo=new String(request.getParameter("addmessageinfo").getBytes("ISO-8859-1"),"utf-8");
		
		MessageInfo msg=new MessageInfo();
		
		msg.setAddmessagename(addmessagename);
		msg.setAddmessageinfo(addmessageinfo);
		
		ShowInfo addmsg=new ShowInfoImpl();
		
		if(addmsg.addmsinfo(msg)) {
			request.setAttribute("msginfo", msg);  //向request域中放置参数
			request.getRequestDispatcher("/MessageServlet").forward(request, response);  //转发到登录页面
		}
	}
}
