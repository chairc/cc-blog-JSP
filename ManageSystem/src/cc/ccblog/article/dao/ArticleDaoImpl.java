package cc.ccblog.article.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cc.ccblog.entity.Article;
import cc.ccblog.util.DBconn;

public class ArticleDaoImpl implements ArticleDao{

	@Override
	public List<Article> showartinfo(int Page) {
		int i=1;
		int curPage = Page - i;
		int pageSize = 8;
		int startRow = (curPage) * pageSize;		
		
		List<Article> list = new ArrayList<Article>();
		try {
			DBconn.init();
			ResultSet rs= DBconn.selectSql("select * from user_article limit "+startRow+",8");
			while (rs.next()) {
				Article article=new Article();
				article.setArticleid(rs.getInt("articleid"));
				article.setArticleauthor(rs.getString("articleauthor"));
				article.setArticletime(rs.getString("articletime"));
				article.setArticletitle(rs.getString("articletitle"));
//				article.setArticlemain(rs.getString("articlemain"));
				list.add(article);
			}
					
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		return null;
	}

	
	public List<Article> showartmaininfo(String articletitle) {
		List<Article> list = new ArrayList<Article>();
		try {
			DBconn.init();
			ResultSet rs= DBconn.selectSql("select * from user_article where articletitle = '"+articletitle+"'");
			while (rs.next()) {
				Article article=new Article();
				article.setArticleid(rs.getInt("articleid"));
				article.setArticleauthor(rs.getString("articleauthor"));
				article.setArticletime(rs.getString("articletime"));
				article.setArticletitle(rs.getString("articletitle"));
				article.setArticlemain(rs.getString("articlemain"));
				list.add(article);
			}
					
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		return null;
	}


	@Override
	public boolean addartinfo(Article wa) {
		boolean flag = false;
		DBconn.init();
		int i =DBconn.addUpdDel("insert into user_article(articletitle,articlemain,articleauthor,articletime)" +
				"values('"+wa.getArticletitle()+"','"+wa.getArticlemain()+"','"+wa.getArticleauthor()+"','"+wa.getArticletime()+"')");			
		if(i>0){
			flag = true;		
		}
		DBconn.closeConn();
		return flag;
	}

}
