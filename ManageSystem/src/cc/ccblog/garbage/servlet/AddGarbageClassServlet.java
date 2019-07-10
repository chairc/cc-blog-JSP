package cc.ccblog.garbage.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cc.ccblog.entity.GarbageClass;
import cc.ccblog.garbage.dao.GarbageClassDao;
import cc.ccblog.garbage.dao.GarbageClassDaoImpl;

@WebServlet("/AddGarbageClassServlet")
@SuppressWarnings("serial")
public class AddGarbageClassServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//列表输出
//		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		if((String)session.getAttribute("username")!="admin") {			
			response.getWriter().print("<script>alert('error:User does not have permission!');window.location.href='jsp/garbageclass/Garbage.jsp'</script>");
		}else {
			String searchgarbagename = new String(request.getParameter("addgarbagename").getBytes("ISO-8859-1"),"utf-8");
			String searchgarbageclass = new String(request.getParameter("selectgarbageclass").getBytes("ISO-8859-1"),"utf-8");
				
			GarbageClass gc = new GarbageClass();
			gc.setGarbagename(searchgarbagename);
			gc.setGarbageclass(searchgarbageclass);
			
			GarbageClassDao gcd=new GarbageClassDaoImpl();
			
			if(gcd.garbagevalidation(searchgarbagename)) {
				if(gcd.addgarbage(gc)) {
					request.getRequestDispatcher("jsp/garbageclass/ShowGarbageClass.jsp").forward(request, response);
				}
			}else{
				response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/garbageclass/Garbage.jsp'</script>");
//				request.setAttribute("xiaoxi", "添加失败，请正确填写添加项！");
//				request.getRequestDispatcher("jsp/others/Failure_new.jsp").forward(request, response);
//				response.sendRedirect("jsp/others/Failure_new.jsp");//重定向到首页
			}
		}
		
					
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
}
