package servlet;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import dao.UserDao;
import dao.UserDaoImpl;
 
@SuppressWarnings("serial")
public class UpdateServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int userId = Integer.parseInt(id);
		
//		String name = request.getParameter("name");
//		String pwd = request.getParameter("pwd");
//		String sex = request.getParameter("sex");
//		String home = request.getParameter("home");
//		String info = request.getParameter("info");
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
		String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"utf-8");
		String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
		String home = new String(request.getParameter("home").getBytes("ISO-8859-1"),"utf-8");
		String info = new String(request.getParameter("info").getBytes("ISO-8859-1"),"utf-8");
		
		System.out.println("------------------------------------"+userId);
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.update(userId, name, pwd, sex, home, info)){
			request.setAttribute("xiaoxi", "更新成功");
			request.getRequestDispatcher("/Editall").forward(request, response);
		}else{
			response.sendRedirect("Failure.jsp");
		}
	}
}
 
