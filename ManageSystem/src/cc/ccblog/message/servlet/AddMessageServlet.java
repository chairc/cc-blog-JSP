package cc.ccblog.message.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.entity.MessageInfo;
import cc.ccblog.message.dao.ShowInfoDao;
import cc.ccblog.message.dao.ShowInfoDaoImpl;

@WebServlet("/AddMessageServlet")
@SuppressWarnings("serial")
public class AddMessageServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String addmessagename=request.getParameter("addmessagename");		
		String addmessageinfo=request.getParameter("addmessageinfo");
//		String addmessagename=new String(request.getParameter("addmessagename").getBytes("ISO-8859-1"),"utf-8");		
//		String addmessageinfo=new String(request.getParameter("addmessageinfo").getBytes("ISO-8859-1"),"utf-8");
		
		String servertime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		
		if(addmessageinfo.equals(null)) {
			response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/backstage/Success_new.jsp'</script>");
		}else {
			MessageInfo msg=new MessageInfo();
			
			msg.setAddmessagename(addmessagename);
			msg.setAddmessageinfo(addmessageinfo);
			msg.setServertime(servertime);
			
			ShowInfoDao addmsg=new ShowInfoDaoImpl();
			
			if(addmsg.addmsinfo(msg)) {
				request.setAttribute("msginfo", msg);  //向request域中放置参数
				request.getRequestDispatcher("/MessageIndexServlet").forward(request, response);  //转发到登录页面
			}else {
				response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/backstage/Success_new.jsp'</script>");
			}
		}
		
	}
}
