package cc.ccblog.common.dao;

import java.util.List;

import cc.ccblog.entity.User;

public interface UserDao {
	boolean login(String name,String pwd);//登录
	boolean register(User user);//注册
	boolean registevalidation(String name);//登录是重名验证
	List<User> getUserAll(int curPage);//返回用户信息集合
	boolean delete(int id) ;//根据id删除用户

	boolean update(int id,String name, String pwd,String sex, String home,String info) ;//修改用户信息
	boolean updateUser(String name, String pwd,String sex, String home,String info) ;//修改用户信息
	
	boolean logintime(String name,String servertime,String ip);//更新登录时间并记录日志
	List<User> getUserLogAll(String name, int curPage);//登录日志总表查询
}
