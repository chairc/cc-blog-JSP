/**
 *
 * @author GitHub ID : chairc
 *
 */

package cc.ccblog.picture.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cc.ccblog.entity.Picture;
import cc.ccblog.util.DBconn;

public class PictureDaoImpl implements PictureDao{
	
	/**
	 * 
	 * 图片读取展示
	 * 
	 */
	@Override
	public List<Picture> showpicture() {
		List<Picture> list = new ArrayList<Picture>();
		try {
			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from user_picture order by pictureid desc limit 0,4");//限制图片数量为最新四张
			while(rs.next()) {
				Picture pic = new Picture();
				pic.setPictureid(rs.getInt("pictureid"));
				pic.setPicturename(rs.getString("picturename"));
				pic.setPictureurl(rs.getString("pictureurl"));
				list.add(pic);
			}
			DBconn.closeConn();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
	}

}
