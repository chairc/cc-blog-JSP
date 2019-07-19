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


@WebServlet("/WriteArticleServlet")
@SuppressWarnings("serial")
public class WriteArticleServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = (String)request.getSession().getAttribute("username");
		String pwd = (String)request.getSession().getAttribute("password");
		
		String articletitle=new String(request.getParameter("articletitle").getBytes("ISO-8859-1"),"utf-8");		
		String articleauthor=new String(request.getParameter("articleauthor").getBytes("ISO-8859-1"),"utf-8");
		String articlemain=new String(request.getParameter("articlemain").getBytes("ISO-8859-1"),"utf-8");
		
		String articletime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		
		UserDao ud = new UserDaoImpl();
		if(ud.login(name,pwd)) {
			if(articletitle!=null && articleauthor!=null) {
				Article wa=new Article();
				wa.setArticletitle(articletitle);
				wa.setArticleauthor(articleauthor);
				wa.setArticlemain(articlemain);
				wa.setArticletime(articletime);
				
				ArticleDao ad=new ArticleDaoImpl();
								
				if(ad.addartinfo(wa)) {
					request.getRequestDispatcher("jsp/backstage/Success_new.jsp").forward(request, response);
				
					System.out.println("--------------\n" + "写入文章---------成功\n" + "--------------");
				}else {
					response.getWriter().print("<script>alert('Alert:Please add information correctly!');window.location.href='jsp/backstage/Success_new.jsp'</script>");
					
					System.out.println("--------------\n" + "写入文章---------失败\n原因：未正确添加信息\n" + "--------------");
				}
			}else {
				response.getWriter().print("<script>alert('Alert:Please add information correctly!?');window.location.href='jsp/backstage/Success_new.jsp'</script>");

				System.out.println("--------------\n" + "写入文章---------失败\n原因：未正确添加信息\n" + "--------------");
			}
		}	
	}
}

