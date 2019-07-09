package cc.ccblog.article.dao;

import java.util.List;

import cc.ccblog.entity.Article;

public interface ArticleDao {

	List<Article> showartinfo(int curPage);

	List<Article> showartmaininfo(String articletitle);

	boolean addartinfo(Article wa);


}
