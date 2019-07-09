package cc.ccblog.entity;

public class Article {
	private int articleid;
	private String articletitle;
	private String articlemain;
	private String articletime;
	private String articleauthor;
	
	public int getArticleid() {
		return articleid;
	}
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	public String getArticletitle() {
		return articletitle;
	}
	public void setArticletitle(String articletitle) {
		this.articletitle = articletitle;
	}
	public String getArticlemain() {
		return articlemain;
	}
	public void setArticlemain(String articlemain) {
		this.articlemain = articlemain;
	}
	public String getArticletime() {
		return articletime;
	}
	public void setArticletime(String articletime) {
		this.articletime = articletime;
	}
	public String getArticleauthor() {
		return articleauthor;
	}
	public void setArticleauthor(String articleauthor) {
		this.articleauthor = articleauthor;
	}
}
