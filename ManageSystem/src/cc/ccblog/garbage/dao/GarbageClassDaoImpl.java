	/**
	 *
	 * @author GitHub ID : chaic
	 * 垃圾分类方法
	 * 
	 */
package cc.ccblog.garbage.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cc.ccblog.entity.GarbageClass;
import cc.ccblog.util.DBconn;

public class GarbageClassDaoImpl implements GarbageClassDao {

	/**
	 * 
	 * 查询垃圾分类
	 * 
	 */
	public List<GarbageClass> searchgarbage(String searchgarbagename) {
		List<GarbageClass> list = new ArrayList<GarbageClass>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from garbage_class where garbagename like '%"+searchgarbagename+"%'");
			while(rs.next()){
				GarbageClass gc = new GarbageClass();
				//gc.setGarbageid(rs.getInt("garbageid"));
				gc.setGarbagename(rs.getString("garbagename"));
				gc.setGarbageclass(rs.getString("garbageclass"));
				list.add(gc);
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
	 * 添加垃圾分类
	 * 
	 */
	public boolean addgarbage(GarbageClass gc) {
		boolean flag = false;
		DBconn.init();
		// 审核表garbage_class_add_need_to_check
		int i =DBconn.addUpdDel("insert into garbage_class (garbagename,garbageclass)" +
				"values('"+gc.getGarbagename()+"','"+gc.getGarbageclass()+"')");			
		if(i>0){
			flag = true;		
		}
		DBconn.closeConn();
		return flag;
	}


	/**
	 * 
	 * 查找所有垃圾
	 * 
	 */
	public List<GarbageClass> searchgarbageall() {
		List<GarbageClass> list = new ArrayList<GarbageClass>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from garbage_class order by garbageclass limit 0,1000");
			while(rs.next()){
				GarbageClass gc = new GarbageClass();
				//gc.setGarbageid(rs.getInt("garbageid"));
				gc.setGarbagename(rs.getString("garbagename"));
				gc.setGarbageclass(rs.getString("garbageclass"));
				list.add(gc);
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
	 * 查询添加的垃圾分类时判断是否垃圾名称重复
	 * 
	 */
	public boolean garbagevalidation(String searchgarbagename) {
		boolean flag = false;
		try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from garbage_class where name='"+searchgarbagename+"'");
			while(rs.next()){
				if(rs.getString("name").equals(searchgarbagename)){
					flag = false;
				}
			}
			DBconn.closeConn();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return flag;
	}

}
