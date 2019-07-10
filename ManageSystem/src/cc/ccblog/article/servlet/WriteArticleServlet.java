package cc.ccblog.article.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.article.dao.ArticleDao;
import cc.ccblog.article.dao.ArticleDaoImpl;
import cc.ccblog.entity.Article;


@WebServlet("/WriteArticleServlet")
@SuppressWarnings("serial")
public class WriteArticleServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		String articletitle=new String(request.getParameter("articletitle").getBytes("ISO-8859-1"),"utf-8");		
		String articleauthor=new String(request.getParameter("articleauthor").getBytes("ISO-8859-1"),"utf-8");
		String articlemain=new String(request.getParameter("articlemain").getBytes("ISO-8859-1"),"utf-8");		
		
		String articletime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		
		if(articletitle.equals(null)&&articleauthor.contentEquals(null)) {
			Article wa=new Article();
			wa.setArticletitle(articletitle);
			wa.setArticleauthor(articleauthor);
			wa.setArticlemain(articlemain);
			wa.setArticletime(articletime);
			
			ArticleDao ad=new ArticleDaoImpl();
			
			if(ad.addartinfo(wa)) {
				request.getRequestDispatcher("jsp/backstage/Success_new.jsp").forward(request, response);
			}else {
				response.getWriter().print("<script>alert('Alert:Please add information correctly!\n请正确添加信息！');window.location.href='jsp/backstage/Success_new.jsp'</script>");
//				request.getRequestDispatcher("/jsp/others/Failure_new.jsp").forward(request, response);
			}
		}else {
			response.getWriter().print("<script>alert('Alert:Please add information correctly!\n请正确添加信息！');window.location.href='jsp/backstage/Success_new.jsp'</script>");
//			request.getRequestDispatcher("/jsp/others/Failure_new.jsp").forward(request, response);

		}
		
	}
}

