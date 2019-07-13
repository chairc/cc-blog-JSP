package cc.ccblog.common.dao;
 
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import cc.ccblog.entity.User;
import cc.ccblog.util.DBconn;
 
public class UserDaoImpl implements UserDao{
	
	/**
	 * @param 注册Register_new.jsp   RegisterServlet
	 * @return
	 */
	public boolean register(User user) {
		boolean flag = false;
		DBconn.init();
		int i =DBconn.addUpdDel("insert into user_info(name,pwd,email,phone,sex,home,info,safequestion,safeanswer)" +
				"values('"+user.getName()+"','"+user.getPwd()+"','"+user.getEmail()+"','"+user.getPhone()+"','"+user.getSex()+"','"+user.getHome()+"','"+user.getInfo()+"','"+user.getSafequestion()+"','"+user.getSafeanswer()+"')");			
		if(i>0){
			flag = true;		
		}
		DBconn.closeConn();
		return flag;
				
		/*try {   //注册冲突验证
			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from user_info where name='"+user.getName()+"'");
			//rs为数据的查询出来的结果集
			while(rs.next()) {			//判断结果集中是否有内容
				if(user.getName().equals(rs.getString("name"))) {  //从rs中取出记录的name字段，和传入的参数name做比较
					//如果相等，则执行以下代码
					return flag;
				}else {					
					int i =DBconn.addUpdDel("insert into user_info(name,pwd,sex,home,info) " +
							"values('"+user.getName()+"','"+user.getPwd()+"','"+user.getSex()+"','"+user.getHome()+"','"+user.getInfo()+"')");			
					if(i>0){
						flag = true;		
					}
					DBconn.closeConn();
					return flag;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;*/
	}
	
	

	/**
	 *  
	 * @param 登录 Login_new.jsp  LoginServlet
	 * 
	 */
    public boolean login(String name, String pwd) {
		boolean flag = false;
		try {
			    DBconn.init();
				ResultSet rs = DBconn.selectSql("select * from user_info where name='"+name+"' and pwd='"+pwd+"'");
				while(rs.next()){
					if(rs.getString("name").equals(name) && rs.getString("pwd").equals(pwd)){
						flag = true;
					}
				}
				DBconn.closeConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
    
  
    /**
	 *  
	 * @param 输出数据库user_info内容   Editall  ShowAll.jsp
	 * 
	 */
	public List<User> getUserAll(int Page) {
		int curPage = Page;
		int pageSize = 8;
		int startRow = (curPage - 1) * pageSize;
		
		List<User> list = new ArrayList<User>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from user_info limit "+startRow+",8");
			while(rs.next()){
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPwd(rs.getString("pwd"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setSex(rs.getString("sex"));
				user.setHome(rs.getString("home"));
				user.setInfo(rs.getString("info"));
				user.setServertime(rs.getString("servertime"));
				user.setIp(rs.getString("ip"));
				user.setSafequestion(rs.getString("safequestion"));
				user.setSafeanswer(rs.getString("safeanswer"));
				list.add(user);
			}
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	/**
	 *  
	 * @param 更新 UpdateServlet
	 * 
	 */
/*	public boolean update(int id,String name, String pwd,String email,String phone,String sex, String home,String info,String safequestion,String safeanswer) {//更新数据库内容
		boolean flag = false;
		DBconn.init();
		String sql ="update user_info set name ='"+name
				+"' , pwd ='"+pwd
				+"' , sex ='"+sex
				+"' , email ='"+email
				+"' , phone ='"+phone
				+"' , home ='"+home
				+"' , info ='"+info
				+"' , safequestion ='"+safequestion
				+"' , safeanswer ='"+safeanswer+"' where id = "+id;
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
*/	
	
	
	/**
	 *  
	 * @param 更新备用  UpdateServlet
	 * 
	 */
	public boolean update(User user) {
		boolean flag = false;
		DBconn.init();
		String sql ="update user_info set name ='"+user.getName()
				+"' , pwd ='"+user.getPwd()
				+"' , email ='"+user.getEmail()
				+"' , phone ='"+user.getPhone()
				+"' , sex ='"+user.getSex()				
				+"' , home ='"+user.getHome()
				+"' , info ='"+user.getInfo()
				+"' , safequestion ='"+user.getSafequestion()
				+"' , safeanswer ='"+user.getSafeanswer()+"' where id = "+user.getId();
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
	
	
	
	/**
	 *  
	 * @param 删除Editall信息	DeleteServlet
	 * 
	 */
	public boolean delete(int id) {
		boolean flag = false;
		DBconn.init();
		String sql = "delete  from user_info where id="+id;
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}


	/**
	 *  
	 * @param 注册冲突验证   RegisterServlet
	 * 
	 */
	public boolean registevalidation(String name) {
		boolean flag = true;
		try {
			    DBconn.init();
				ResultSet rs = DBconn.selectSql("select * from user_info where name='"+name+"'");
				while(rs.next()){
					if(rs.getString("name").equals(name)){
						flag = false;
					}
				}
				DBconn.closeConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}


	/**
	 *  
	 * @param 后台管理修改个人信息 	 UpdateUserServlet   *未修改完成
	 * 
	 */
	public boolean updateUser(String name, String pwd, String sex, String home, String info) {
		boolean flag = false;
		DBconn.init();
		String sql ="update user_info set name ='"+name
				+"' , pwd ='"+pwd
				+"' , sex ='"+sex
				+"' , home ='"+home
				+"' , info ='"+info+"' where name='"+name+"'";
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}


	/**
	 *  
	 * @param 用户登录时间、IP地址判断    LoginServlet
	 * 
	 */
	public boolean logintime(String name,String servertime,String ip) {
		boolean flag = false;
		DBconn.init();
		String sql1 ="update user_info set servertime ='"+servertime+"',ip='"+ip+"' where name='"+name+"'";
		String sql2 ="insert into user_logintimelog(logname,logtime,logip) values('"+name+"','"+servertime+"','"+ip+"')";
		int i =DBconn.addUpdDel(sql1);
		int j =DBconn.addUpdDel(sql2);
		if(i>0&&j>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}


	/**
	 *  
	 * @param 获取用户登录日志
	 * 
	 */
	public List<User> getUserLogAll(String name,int Page) {
		int curPage = Page;
		int pageSize = 10;
		int startRow = (curPage - 1) * pageSize;
		
		List<User> list = new ArrayList<User>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from user_logintimelog where logname='"+name+"' order by logid DESC limit "+startRow+",10");
			while(rs.next()){
				User user = new User();
				//user.setLogid(rs.getInt("logid"));
				user.setLogname(rs.getString("logname"));
				user.setTimelog(rs.getString("logtime"));
				list.add(user);
			}
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	


	/**
	 *  
	 * @param 找回用户名和密码
	 * 
	 */
	public List<User> retrieveaccount(String selectfindway, String findway, String safequestion, String safeanswer) {
		List<User> list = new ArrayList<User>();
    	try {
		    DBconn.init();
		    User user = new User();
		    if(selectfindway.equals("用户名")) {
		    	ResultSet rs = DBconn.selectSql("select * from user_info where name = '"+findway+"' and safequestion = '"+safequestion+"' and safeanswer = '"+safeanswer+"'");	    	
		    	while(rs.next()){
		    		user.setName(rs.getString("name"));
		    		user.setPwd(rs.getString("pwd"));
		    	}
		    }else if(selectfindway.equals("电子邮箱")) {
				ResultSet rs = DBconn.selectSql("select * from user_info where email = '"+findway+"' and safequestion = '"+safequestion+"' and safeanswer = '"+safeanswer+"'");
				while(rs.next()){
					user.setName(rs.getString("name"));
					user.setPwd(rs.getString("pwd"));
				}
		    }else if (selectfindway.equals("电话")) {
				ResultSet rs = DBconn.selectSql("select * from user_info where phone = '"+findway+"' and safequestion = '"+safequestion+"' and safeanswer = '"+safeanswer+"'");
				while(rs.next()){
					user.setName(rs.getString("name"));
					user.setPwd(rs.getString("pwd"));
				}
		    }
		    list.add(user);
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	/**
	 *  
	 * @param 验证数据库数据是否完整，不完整则强制修改信息
	 * 
	 */

	public boolean Searchsafetyverification(String name) {		
		boolean flag = false;
		try {
			    DBconn.init();
				ResultSet rs = DBconn.selectSql("select * from user_info where name='"+name+"'");
				while(rs.next()){					
					String email=rs.getString("email");
					String phone=rs.getString("phone");
					String safequestion=rs.getString("safequestion");
					String safeanswer=rs.getString("safeanswer");
					if(!(email.isEmpty()|| phone.isEmpty() || safequestion.isEmpty() || safeanswer.isEmpty())) {
						flag = true;
					}
				}
				DBconn.closeConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}



	/**
	 *  
	 * @param 强制修改信息界面信息加载
	 * 
	 */
	public List<User> safetyverification(String name) {
		List<User> list = new ArrayList<User>();
		try {
			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from user_info where name='"+name+"'");
			while(rs.next()) {
				User user = new User();
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setSex(rs.getString("sex"));
				user.setHome(rs.getString("home"));
				user.setInfo(rs.getString("info"));
				user.setSafeanswer(rs.getString("safeanswer"));
				list.add(user);
			}
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}



	/**
	 *  
	 * @param 强制修改信息
	 * 
	 */
	public boolean updatesafetyverification(User user) {
		boolean flag = false;
		DBconn.init();
		String sql ="update user_info set email ='"+user.getEmail()
				+"' , phone ='"+user.getPhone()
				+"' , safequestion ='"+user.getSafequestion()
				+"' , safeanswer ='"+user.getSafeanswer()+"' where name = '"+user.getName()+"'";
		int i =DBconn.addUpdDel(sql);
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}



	
		

	
	
	

	



    
}
