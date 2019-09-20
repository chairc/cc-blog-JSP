/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.entity;
 
public class User {
	//注册
    private int id;
    private String name;
    private String pwd;
    private String sex;
    private String home;
    private String info;
    private String servertime;
    private String ip;
    private String email;
    private String phone;
    private String safequestion;
    private String safeanswer;
    private String system;
    private String browsername;
    private int weight;
    
    //页面返回值
    private int pageback;
    
    //登陆日志
    private int logid;    
    private String timelog;
    private String logname;
    private String logsystem;
    private String logbrowsername;
    
    private int logpagecount;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getServertime() {
		return servertime;
	}
	public void setServertime(String servertime) {
		this.servertime = servertime;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getTimelog() {
		return timelog;
	}
	public void setTimelog(String timelog) {
		this.timelog = timelog;
	}
	public int getLogid() {
		return logid;
	}
	public void setLogid(int logid) {
		this.logid = logid;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public int getPageback() {
		return pageback;
	}
	public void setPageback(int pageback) {
		this.pageback = pageback;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSafequestion() {
		return safequestion;
	}
	public void setSafequestion(String safequestion) {
		this.safequestion = safequestion;
	}
	public String getSafeanswer() {
		return safeanswer;
	}
	public void setSafeanswer(String safeanswer) {
		this.safeanswer = safeanswer;
	}
	public String getSystem() {
		return system;
	}
	public void setSystem(String system) {
		this.system = system;
	}
	public String getBrowsername() {
		return browsername;
	}
	public void setBrowsername(String browsername) {
		this.browsername = browsername;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getLogsystem() {
		return logsystem;
	}
	public void setLogsystem(String logsystem) {
		this.logsystem = logsystem;
	}
	public String getLogbrowsername() {
		return logbrowsername;
	}
	public void setLogbrowsername(String logbrowsername) {
		this.logbrowsername = logbrowsername;
	}
	public int getLogpagecount() {
		return logpagecount;
	}
	public void setLogpagecount(int logpagecount) {
		this.logpagecount = logpagecount;
	}
	

}
