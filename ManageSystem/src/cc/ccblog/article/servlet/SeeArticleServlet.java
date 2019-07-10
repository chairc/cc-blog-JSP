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
//		String articletitle=new String(request.getParameter("articletitle").getBytes("ISO-8859-1"),"utf-8");
		System.out.println(articletitle);
		
		ArticleDao addart=new ArticleDaoImpl();
		List<Article> addartall=addart.showartmaininfo(articletitle);
		request.setAttribute("ArticleAll", addartall);
		request.getRequestDispatcher("/jsp/article/ShowArticle.jsp").forward(request, response);
		
				
	}
}

