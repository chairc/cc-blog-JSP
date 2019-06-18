package dao;

import java.util.List;

import entity.MessageInfo;
import entity.User;


public interface ShowInfo {
	public List<MessageInfo> showinfo();
//	public List<MessageInfo> editinfo();
//	public boolean update(int m_id);//后台修改showinfo数据

	public boolean update(int messageid, String messagemaintitle, String messagetitle, String messageinfo);
	
	public List<MessageInfo> showmsinfo();//留言板信息展示

	public boolean addmsinfo(MessageInfo msg);//留言板留言



}
