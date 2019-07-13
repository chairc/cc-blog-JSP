package cc.ccblog.common.dao;

import java.util.List;

import cc.ccblog.entity.User;

public interface UserDao {
	boolean login(String name,String pwd);//登录
	boolean register(User user);//注册
	boolean registevalidation(String name);//注册是重名验证
	List<User> getUserAll(int curPage);//返回用户信息集合
	boolean delete(int id) ;//根据id删除用户

//	boolean update(int id,String name, String pwd,String email,String phone,String sex, String home,String info,String safequestion,String safeanswer) ;//修改用户信息
	boolean update(User user);
	boolean updateUser(String name, String pwd,String sex, String home,String info) ;//修改用户信息
	
	boolean logintime(String name,String servertime,String ip);//更新登录时间并记录日志
	List<User> getUserLogAll(String name, int curPage);//登录日志总表查询
	
	List<User> retrieveaccount(String selectfindway, String findway, String safequestion, String safeanswer);//找回信息
		
	boolean Searchsafetyverification(String name);//验证数据库数据是否完整，不完整则强制修改信息
	List<User> safetyverification(String name);//强制修改信息界面信息加载
	boolean updatesafetyverification(User user);
	
}
