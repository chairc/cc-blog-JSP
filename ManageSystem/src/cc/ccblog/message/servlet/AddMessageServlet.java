/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.message.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
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

		String sename = (String) request.getSession().getAttribute("username");//获取session中的用户名数据
		String sepwd = (String) request.getSession().getAttribute("password");
		
		UserDao ud = new UserDaoImpl();
		if(ud.login(sename, sepwd)) {
//			response.setContentType("text/html;charset=utf-8");
			request.setCharacterEncoding("utf-8");
			
			String addmessagename = sename;		
			String addmessageinfo = request.getParameter("addmessageinfo");
//			String addmessagename = new String(request.getParameter("addmessagename").getBytes("ISO-8859-1"),"utf-8");		
//			String addmessageinfo = new String(request.getParameter("addmessageinfo").getBytes("ISO-8859-1"),"utf-8");
			
			String servertime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
			
			if(addmessageinfo.equals(null)) {
				response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='MessageIndexServlet'</script>");
			}else {
				MessageInfo msg=new MessageInfo();
				
				msg.setAddmessagename(addmessagename);
				msg.setAddmessageinfo(addmessageinfo);
				msg.setServertime(servertime);
				
				ShowInfoDao addmsg = new ShowInfoDaoImpl();
				
				if(addmsg.addmsinfo(msg)) {
					request.setAttribute("msginfo", msg);
					request.getRequestDispatcher("/MessageIndexServlet").forward(request, response);
				
					System.out.println("--------------\n" + sename + "添加留言" + "---------成功\n" + "--------------");
				}else {
					response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='MessageIndexServlet'</script>");
				
					System.out.println("--------------\n" + sename + "添加留言" + "---------失败\n原因：未正确添加信息\n" + "--------------");
				}
			}
		}else {
			if(sename == null || sepwd == null) {
				response.getWriter().print("<script>alert('Alert:Please login......');window.location.href='Login';</script>");
			
				System.out.println("--------------\n" + sename + "添加留言" + "---------失败\n原因：未登录\n" + "--------------");
			}else {
				response.getWriter().print("<script>alert('Alert:Incorrect information verification!');window.location.href='Login';</script>");
			
				System.out.println("--------------\n" + sename + "添加留言" + "---------失败\n原因：未正确验证信息\n" + "--------------");
			}
		}	
	}
}
