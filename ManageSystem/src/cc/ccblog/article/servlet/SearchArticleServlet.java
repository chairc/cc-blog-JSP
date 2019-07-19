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

@SuppressWarnings("serial")
@WebServlet("/SearchArticleServlet")
public class SearchArticleServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String searcharticletitle = request.getParameter("searcharticletitle");
		
		if(searcharticletitle == null) {
			System.out.println("搜索文章题目为" + searcharticletitle + "-----进入");
		}else {
			if(request.getParameter("page")!=null) {
				String page = new String(request.getParameter("page").getBytes("ISO-8859-1"),"utf-8");
				int curPage = Integer.parseInt(page);
				request.getSession().setAttribute("pagenum",page);
				
				ArticleDao addart=new ArticleDaoImpl();
				List<Article> addartall=addart.searcharticletitle(curPage,searcharticletitle);
				request.setAttribute("ArticleAll", addartall);
				request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
				
				//System.out.println("--------------\n" + "显示文章列表" + "---------成功\n" + "--------------");
			}else {
				String page="1";
				int curPage = 1;
				request.getSession().setAttribute("pagenum",page);
				
				ArticleDao addart=new ArticleDaoImpl();
				List<Article> addartall=addart.searcharticletitle(curPage,searcharticletitle);
				request.setAttribute("ArticleAll", addartall);
				request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
				
				//System.out.println("--------------\n" + "显示文章列表" + "---------成功\n" + "--------------");
			}	
		}			
	}
}
