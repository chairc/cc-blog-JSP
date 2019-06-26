package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShowInfo;
import dao.ShowInfoImpl;
import entity.MessageInfo;
import jdk.internal.instrumentation.TypeMappings;

@WebServlet("/Editinfo")
@SuppressWarnings("serial")
public class Editinfo extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShowInfo editInfo=new ShowInfoImpl();
//		List<MessageInfo> editinforall=editInfo.editinfo();
		List<MessageInfo> editinforall=editInfo.showinfo();
		request.setAttribute("EditInfoAll", editinforall);
		request.getRequestDispatcher("/jsp/basic/InfoEdit.jsp").forward(request, response);
	}
}