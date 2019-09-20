/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.entity;

public class Article {
	private int articleid;
	private String articletitle;
	private String articlemain;
	private String articletime;
	private String articleauthor;
	private int articleclicknum;
	
	
	private int addarticlemessageid;
	private String whicharticletitle;
	private String addarticlemessagename;
	private String addarticlemessageinfo;
	private String addarticlemessagetime;
	
	private int articlepage;
	
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
	public int getArticleclicknum() {
		return articleclicknum;
	}
	public void setArticleclicknum(int articleclicknum) {
		this.articleclicknum = articleclicknum;
	}
	public int getAddarticlemessageid() {
		return addarticlemessageid;
	}	
	public String getWhicharticletitle() {
		return whicharticletitle;
	}
	public void setWhicharticletitle(String whicharticletitle) {
		this.whicharticletitle = whicharticletitle;
	}
	public void setAddarticlemessageid(int addarticlemessageid) {
		this.addarticlemessageid = addarticlemessageid;
	}
	public String getAddarticlemessagename() {
		return addarticlemessagename;
	}
	public void setAddarticlemessagename(String addarticlemessagename) {
		this.addarticlemessagename = addarticlemessagename;
	}
	public String getAddarticlemessageinfo() {
		return addarticlemessageinfo;
	}
	public void setAddarticlemessageinfo(String addarticlemessageinfo) {
		this.addarticlemessageinfo = addarticlemessageinfo;
	}
	public String getAddarticlemessagetime() {
		return addarticlemessagetime;
	}
	public void setAddarticlemessagetime(String addarticlemessagetime) {
		this.addarticlemessagetime = addarticlemessagetime;
	}
	public int getArticlepage() {
		return articlepage;
	}
	public void setArticlepage(int articlepage) {
		this.articlepage = articlepage;
	}
	
	
	
	
}
