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
public class MessageServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShowInfo addms=new ShowInfoImpl();
		List<MessageInfo> addmsall=addms.showmsinfo();
		request.setAttribute("MessageAll", addmsall);
		request.getRequestDispatcher("/Message.jsp").forward(request, response);
	}
}
