package cc.ccblog.message.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.entity.MessageInfo;
import cc.ccblog.message.dao.ShowInfoDao;
import cc.ccblog.message.dao.ShowInfoDaoImpl;

@WebServlet("/Editinfo")
@SuppressWarnings("serial")
public class Editinfo extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShowInfoDao editInfo=new ShowInfoDaoImpl();
//		List<MessageInfo> editinforall=editInfo.editinfo();
		List<MessageInfo> editinforall=editInfo.showinfo();
		request.setAttribute("EditInfoAll", editinforall);
		request.getRequestDispatcher("/jsp/basic/InfoEdit.jsp").forward(request, response);
	}
}