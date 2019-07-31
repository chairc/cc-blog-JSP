/**
 *
 * @author GitHub ID : chairc
 *
 */

package cc.ccblog.article.dao;

import java.util.List;

import cc.ccblog.entity.Article;

public interface ArticleDao {

	List<Article> showartinfo(int curPage);//文章目录分页

	List<Article> showartmaininfo(String articletitle);//显示文章内容

	boolean addartinfo(Article wa);//写文章

	boolean addartmsinfo(Article msg);//文章底部留言

	List<Article> showartmsginfo(String articletitle);//文章底部留言展示

	List<Article> searcharticletitle(int curPage,String searcharticletitle);//模糊搜索文章

	int artpagecount();


}
