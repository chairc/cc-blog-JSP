package dao;

import java.util.List;


import entity.User;

public interface UserDao {
	public boolean login(String name,String pwd);//登录
	public boolean register(User user);//注册
	public boolean registevalidation(String name);//登录是重名验证
	public List<User> getUserAll(int curPage);//返回用户信息集合
	public boolean delete(int id) ;//根据id删除用户

	public boolean update(int id,String name, String pwd,String sex, String home,String info) ;//修改用户信息
	public boolean updateUser(String name, String pwd,String sex, String home,String info) ;//修改用户信息
	
	public boolean logintime(String name,String servertime,String ip);//更新登录时间并记录日志
	public List<User> getUserLogAll(String name, int curPage);//登录日志总表查询
}
