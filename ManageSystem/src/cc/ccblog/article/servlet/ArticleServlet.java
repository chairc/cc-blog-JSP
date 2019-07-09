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


@WebServlet("/ArticleServlet")
@SuppressWarnings("serial")
public class ArticleServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("page")!=null) {
			String page = new String(request.getParameter("page").getBytes("ISO-8859-1"),"utf-8");
			int curPage = Integer.parseInt(page);
			request.getSession().setAttribute("pagenum",page);
			
			ArticleDao addart=new ArticleDaoImpl();
			List<Article> addartall=addart.showartinfo(curPage);
			request.setAttribute("ArticleAll", addartall);
			request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
		}else {
			String page="1";
			int curPage = 1;
			request.getSession().setAttribute("pagenum",page);
			
			ArticleDao addart=new ArticleDaoImpl();
			List<Article> addartall=addart.showartinfo(curPage);
			request.setAttribute("ArticleAll", addartall);
			request.getRequestDispatcher("/jsp/article/Article.jsp").forward(request, response);
		}	
		
	}
}

