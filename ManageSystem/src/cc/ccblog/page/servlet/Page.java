/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.page.servlet;

import java.io.IOException;
import java.util.List;

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
import cc.ccblog.entity.MessageInfo;
import cc.ccblog.entity.User;
import cc.ccblog.message.dao.ShowInfoDao;
import cc.ccblog.message.dao.ShowInfoDaoImpl;

@WebServlet("/Page")
@SuppressWarnings("serial")
public class Page extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = (String) request.getSession().getAttribute("username");// 获取session中的用户名数据

		String sapageprve = request.getParameter("sapageprev");
		String sapagenext = request.getParameter("sapagenext");

		String mapageprve = request.getParameter("mapageprev");
		String mapagenext = request.getParameter("mapagenext");

		String sllpageprve = request.getParameter("sllpageprev");
		String sllpagenext = request.getParameter("sllpagenext");

		String maipageprve = request.getParameter("maipageprev");
		String maipagenext = request.getParameter("maipagenext");
		
		String artpageprve = request.getParameter("artpageprev");
		String artpagenext = request.getParameter("artpagenext");
		int i = 1;
		if(request.getParameter("page") != null) {
//			String page = new String(request.getParameter("page").getBytes("ISO-8859-1"), "utf-8");

			// 编辑所有用户上一页
			if (sapageprve != null) {			

				int curPage = Integer.parseInt(request.getParameter("page")) - i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				UserDao ud = new UserDaoImpl();
				List<User> userAll = ud.getUserAll(curPage);
				request.setAttribute("userAll", userAll);
				request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
			}
			// 编辑所有用户下一页
			if (sapagenext != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) + i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				UserDao ud = new UserDaoImpl();
				List<User> userAll = ud.getUserAll(curPage);
				request.setAttribute("userAll", userAll);
				request.getRequestDispatcher("/jsp/backstage/ShowAll.jsp").forward(request, response);
			}
			// 后台留言板上一页
			if (mapageprve != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) - i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ShowInfoDao addms = new ShowInfoDaoImpl();
				List<MessageInfo> addmsall = addms.showmsinfo(curPage);
				request.setAttribute("MessageAll", addmsall);
				request.getRequestDispatcher("/jsp/message/Message.jsp").forward(request, response);
			}
			// 后台留言板下一页
			if (mapagenext != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) + i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ShowInfoDao addms = new ShowInfoDaoImpl();
				List<MessageInfo> addmsall = addms.showmsinfo(curPage);
				request.setAttribute("MessageAll", addmsall);
				request.getRequestDispatcher("/jsp/message/Message.jsp").forward(request, response);
			}
			// 日志文件上一页
			if (sllpageprve != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) - i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				UserDao ud = new UserDaoImpl();
				List<User> userLogAll = ud.getUserLogAll(s, curPage);
				request.setAttribute("userLogAll", userLogAll);
				request.getRequestDispatcher("/jsp/backstage/SearchLoginLog.jsp").forward(request, response);
			}
			// 日志文件下一页
			if (sllpagenext != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) + i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				UserDao ud = new UserDaoImpl();
				List<User> userLogAll = ud.getUserLogAll(s, curPage);
				request.setAttribute("userLogAll", userLogAll);
				request.getRequestDispatcher("/jsp/backstage/SearchLoginLog.jsp").forward(request, response);
			}
			// Blog留言板上一页
			if (maipageprve != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) - i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ShowInfoDao addms = new ShowInfoDaoImpl();
				List<MessageInfo> addmsall = addms.showmsinfo(curPage);
				request.setAttribute("MessageAll", addmsall);
				request.getRequestDispatcher("/jsp/message/Message_Index.jsp").forward(request, response);
			}
			// Blog留言板下一页
			if (maipagenext != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) + i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ShowInfoDao addms = new ShowInfoDaoImpl();
				List<MessageInfo> addmsall = addms.showmsinfo(curPage);
				request.setAttribute("MessageAll", addmsall);
				request.getRequestDispatcher("/jsp/message/Message_Index.jsp").forward(request, response);
			}
			// Blog文章上一页
			if (artpageprve != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) - i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ArticleDao addart=new ArticleDaoImpl();
				List<Article> addartall=addart.showartinfo(curPage);
				request.setAttribute("ArticleAll", addartall);
				request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
			}
			// Blog留言板下一页
			if (artpagenext != null) {

				int curPage = Integer.parseInt(request.getParameter("page")) + i;
				String newpage = String.valueOf(curPage);
				request.getSession().setAttribute("pagenum", newpage);

				ArticleDao addart=new ArticleDaoImpl();
				List<Article> addartall=addart.showartinfo(curPage);
				request.setAttribute("ArticleAll", addartall);
				request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
			}
		}
		
	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
