package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GarbageClassDao;
import dao.GarbageClassImpl;
import entity.GarbageClass;

@WebServlet("/AddGarbageClassServlet")
@SuppressWarnings("serial")
public class AddGarbageClassServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//列表输出
		
		String searchgarbagename = new String(request.getParameter("addgarbagename").getBytes("ISO-8859-1"),"utf-8");
		String searchgarbageclass = new String(request.getParameter("selectgarbageclass").getBytes("ISO-8859-1"),"utf-8");
			
		GarbageClass gc = new GarbageClass();
		gc.setGarbagename(searchgarbagename);
		gc.setGarbageclass(searchgarbageclass);
		
		GarbageClassDao gcd=new GarbageClassImpl();
		if(gcd.addgarbage(gc)) {
			request.getRequestDispatcher("jsp/garbageclass/ShowGarbageClass.jsp").forward(request, response);
		}else{
			
			response.sendRedirect("/jsp/others/Failure_new.jsp");//重定向到首页
		}			
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
}
