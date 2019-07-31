/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.message.dao;

import java.util.List;

import cc.ccblog.entity.MessageInfo;


public interface ShowInfoDao {
	List<MessageInfo> showinfo();
//	List<MessageInfo> editinfo();
//	boolean update(int m_id);//后台修改showinfo数据

	boolean update(int messageid, String messagemaintitle, String messagetitle, String messageinfo);
	
	List<MessageInfo> showmsinfo(int curPage);//留言板信息展示

	boolean addmsinfo(MessageInfo msg);//留言板留言

	int msgpagecount();



}
