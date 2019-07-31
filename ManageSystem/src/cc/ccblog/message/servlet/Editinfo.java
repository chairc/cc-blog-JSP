/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.message.servlet;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/Editinfo")
@SuppressWarnings("serial")
public class Editinfo extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = (String)request.getSession().getAttribute("username");
		String pwd = (String)request.getSession().getAttribute("password");
		
		UserDao ud = new UserDaoImpl();
		if(ud.login(name, pwd)) {
			ShowInfoDao editInfo=new ShowInfoDaoImpl();
//			List<MessageInfo> editinforall=editInfo.editinfo();
			List<MessageInfo> editinforall=editInfo.showinfo();
			request.setAttribute("EditInfoAll", editinforall);
			request.getRequestDispatcher("/jsp/basic/InfoEdit.jsp").forward(request, response);
		
			//System.out.println("--------------\n" + "显示修改登录信息页面" + "---------成功\n" + "--------------");
		}else {
			if(name == null || pwd == null) {
				response.getWriter().print("<script>alert('Alert:Please login......');window.location.href='showinfo';</script>");
			
				//System.out.println("--------------\n" + "添加留言" + "---------失败\n原因：未登录\n" + "--------------");
			}else {
				response.getWriter().print("<script>alert('Alert:Incorrect information verification!');window.location.href='showinfo';</script>");
			
				//System.out.println("--------------\n" + "添加留言" + "---------失败\n原因：未正确验证信息\n" + "--------------");
			}
		}
		
	}
}