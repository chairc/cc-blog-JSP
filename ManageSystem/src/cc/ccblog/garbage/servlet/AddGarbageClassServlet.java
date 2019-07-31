/**
 *
 * @author GitHub ID : chairc
 *
 */
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
			
				System.out.println("--------------\n" + "添加垃圾：" + searchgarbagename + "\n种类："+ searchgarbageclass + "---------成功\n" + "--------------");
			}else{
				response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/garbageclass/Garbage.jsp'</script>");
				
				System.out.println("--------------\n" + "添加垃圾：" + searchgarbagename + "\n种类："+ searchgarbageclass + "---------失败\n原因：未正确添加信息\n" + "--------------");
			}
		}
		
					
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
}
