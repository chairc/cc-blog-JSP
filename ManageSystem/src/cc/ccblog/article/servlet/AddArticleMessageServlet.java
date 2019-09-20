/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.article.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.article.dao.ArticleDao;
import cc.ccblog.article.dao.ArticleDaoImpl;
import cc.ccblog.common.dao.UserDao;
import cc.ccblog.common.dao.UserDaoImpl;
import cc.ccblog.entity.Article;

@SuppressWarnings("serial")
@WebServlet("/AddArticleMessageServlet")
public class AddArticleMessageServlet extends HttpServlet {
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
			request.setCharacterEncoding("utf-8");
			
			String whicharticletitle = (String) request.getSession().getAttribute("articletitle");
			
			String addarticlemessagename = sename;		
			String addarticlemessageinfo = request.getParameter("addarticlemessageinfo");
			
			String servertime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
			
			if(addarticlemessageinfo.equals(null)) {
				response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/backstage/Success_new.jsp'</script>");
			}else {
				Article msg = new Article();
				
				msg.setWhicharticletitle(whicharticletitle);
				msg.setAddarticlemessagename(addarticlemessagename);
				msg.setAddarticlemessageinfo(addarticlemessageinfo);
				msg.setAddarticlemessagetime(servertime);
				
				ArticleDao addmsg=new ArticleDaoImpl();
				
				
				if(addmsg.addartmsinfo(msg)) {
					response.getWriter().print("<script>window.location.href='SeeArticleServlet';</script>");
				
					System.out.println("--------------\n" + "添加文章留言：" + "---------成功\n" + "--------------");
				}else {
					response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.history.back(-1);</script>");
				
					System.out.println("--------------\n" + "添加文章留言" + "---------失败\n原因：未正确添加信息\n" + "--------------");
				}
			}
		}else {
			if(sename == null || sepwd == null) {
				response.getWriter().print("<script>alert('Alert:Please login......');window.location.href='Login';</script>");
			
				System.out.println("--------------\n" + "添加文章留言" + "---------失败\n原因：未登录\n" + "--------------");
			}else {
				response.getWriter().print("<script>alert('Alert:Incorrect information verification!');window.location.href='Login';</script>");
			
				System.out.println("--------------\n" + "添加文章留言" + "---------失败\n原因：未验证信息成功\n" + "--------------");
			}
		}	
	}
}
