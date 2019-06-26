package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@SuppressWarnings("serial")
@MultipartConfig 
@WebServlet("/PortraitServlet")
public class PortraitServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/text; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		final Part filePart = request.getPart("headerImg");  
        if (filePart == null) {
            response.getWriter().print("未指定文件");  
            return;
        }  
          
        if (filePart.getSize() > 3000 * 3000) {
            response.getWriter().print("文件太大");
            return;
        }
        String filename = filePart.getSubmittedFileName();//获取上传文件名
//			System.out.println(filename);
		String realPath = this.getServletContext().getRealPath("/avatorImg");
		System.out.println(realPath);
        //获取web目录的真实物理路径，文件将保存在upload文件夹下
        File dir=new File(realPath);
        if(!dir.exists()){
            dir.mkdir();//如果目录不存在，则创建
        }
  
        filePart.write(realPath + "/" + filename);//将文件写入磁盘
              
        out.print(1);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
