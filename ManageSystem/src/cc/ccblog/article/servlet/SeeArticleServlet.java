/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.article.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.article.dao.ArticleDao;
import cc.ccblog.article.dao.ArticleDaoImpl;
import cc.ccblog.entity.Article;


@WebServlet("/SeeArticleServlet")
@SuppressWarnings("serial")
public class SeeArticleServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String articletitle=request.getParameter("articletitle");
		
		if(articletitle == null) {
			
			System.out.println("文章题目为" + articletitle + "-----留言后进入");
			
			String whicharticletitle = (String) request.getSession().getAttribute("articletitle");
			ArticleDao addart=new ArticleDaoImpl();
			List<Article> addartall=addart.showartmaininfo(whicharticletitle);
			List<Article> addartmsgall=addart.showartmsginfo(whicharticletitle);
			request.setAttribute("ArticleAll", addartall);
			request.setAttribute("ArticleMsgAll", addartmsgall);
			request.getRequestDispatcher("/jsp/article/ShowArticle.jsp").forward(request, response);
			
			//System.out.println("--------------\n" + "显示文章与留言" + "---------成功\n" + "--------------");
		}else {
			request.getSession().setAttribute("articletitle", articletitle);
			
			System.out.println("文章题目为" + articletitle + "-----目录进入");
			
			ArticleDao addart=new ArticleDaoImpl();
			List<Article> addartall=addart.showartmaininfo(articletitle);
			List<Article> addartmsgall=addart.showartmsginfo(articletitle);
			request.setAttribute("ArticleAll", addartall);
			request.setAttribute("ArticleMsgAll", addartmsgall);
			request.getRequestDispatcher("/jsp/article/ShowArticle.jsp").forward(request, response);
			
			//System.out.println("--------------\n" + "显示文章与留言" + "---------成功\n" + "--------------");
		}
	}
}

