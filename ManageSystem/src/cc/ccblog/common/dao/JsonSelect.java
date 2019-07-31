/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.common.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.HashMap;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;



public class JsonSelect {
	public JsonObject selectall() {
		Connection con = null;   //定义引用
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cy?useUnicode = true&characterEncoding = utf-8&useSSL = false&serverTimezone = GMT&allowPublicKeyRetrieval=true","root","*19980424*");
			String sql = "select id,name,pwd,email,phone,sex,home,info,servertime,ip,safequestion,safeanswer,whichsystem,whichbrowsername from user_info";
			PreparedStatement pstmt = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

			rs = pstmt.executeQuery();
			if(rs == null) {
				return null;
			}
			Gson gson = new Gson();
			HashMap<String, String> hm = new HashMap<String, String>();
			JsonArray jsonarray = new JsonArray();
			JsonObject json = new JsonObject();
			//String Shm = null;
			json.addProperty("code", 0);
			json.addProperty("msg", "");
			json.addProperty("count", 1000);
			while(rs.next()){
				ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
				int icolnum = rsmd.getColumnCount();
				for(int i= 1;i<= icolnum;i++){
				hm.put(rsmd.getColumnName(i).toString(), rs.getString(i));
				}
				/*//得到结果集(rs)的结构信息，比如字段数、字段名等。
				ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
				//返回此 ResultSet对象中的列数。 
				//以后作为判断权限备用
				int icolnum = rsmd.getColumnCount();
				for(int i= 1;i<= icolnum;i++){
					 //转换为json 类型
					if(rs.getString(i).equals("user")){
						hm.put(rsmd.getColumnName(i).toString(),"普通用户");
					}else if(rs.getString(i).equals("admin_1")){
						hm.put(rsmd.getColumnName(i).toString(),"一级管理员");
					}else if(rs.getString(i).equals("admin_2")){
						hm.put(rsmd.getColumnName(i).toString(),"二级管理员");
					}else if(rs.getString(i).equals("SuperAdmin")){
						hm.put(rsmd.getColumnName(i).toString(),"超级管理员");
					}else{
						hm.put(rsmd.getColumnName(i).toString(), rs.getString(i));
					}*/
				jsonarray.add(gson.toJsonTree(hm));
				System.out.println(jsonarray);

			}
			json.add("data", jsonarray);
			System.out.println(json);
			
			return json;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}finally {
			//关闭
			try {
				if(rs != null)rs.close();
				if(stmt != null)stmt.close();
				if(con != null)con.close(); //必须要关
			}catch(Exception e) {
				throw new RuntimeException(e);
			}
		}
	}
}
