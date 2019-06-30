package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.GarbageClass;
import util.DBconn;

public class GarbageClassImpl implements GarbageClassDao {

	@Override
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

	@Override
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

	@Override
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

}
