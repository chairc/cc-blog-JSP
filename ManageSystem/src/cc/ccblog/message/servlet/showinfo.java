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

@WebServlet("/showinfo")
//@WebServlet(urlPatterns = "/showinfo",loadOnStartup = 1)
@SuppressWarnings("serial")
public class showinfo extends HttpServlet{
	
//	public showinfo() {
//		super();
//	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShowInfoDao sInfo=new ShowInfoDaoImpl();
		List<MessageInfo> inforall=sInfo.showinfo();
		request.setAttribute("InfoAll", inforall);
		request.getRequestDispatcher("/jsp/basic/Login_new.jsp").forward(request, response);
	}

}
