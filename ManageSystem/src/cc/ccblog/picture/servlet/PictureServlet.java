/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.picture.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cc.ccblog.entity.Picture;
import cc.ccblog.picture.dao.PictureDao;
import cc.ccblog.picture.dao.PictureDaoImpl;



@WebServlet("/PictureServlet")
@SuppressWarnings("serial")
public class PictureServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PictureDao pd = new PictureDaoImpl();
		List<Picture> pdlist = pd.showpicture();
		request.setAttribute("Pic", pdlist);
		request.getRequestDispatcher("/jsp/picture/Picture_Index.jsp").forward(request, response);
	}
}
