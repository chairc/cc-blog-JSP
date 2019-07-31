/**
 *
 * @author GitHub ID : chairc
 *
 */
package cc.ccblog.transmission.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/DownLoadFiles")
public class DownLoadFiles extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws ServletException, IOException { 
		    doPost(request, response); 
		  } 
		   
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
		      throws ServletException, IOException { 
		String downloadfilesname = new String(request.getParameter("selectfilename").getBytes("ISO-8859-1"),"utf-8");	  
		
			  
		String basePath = request.getSession().getServletContext().getRealPath("/download"); //获取下载文件真实路径
		
		
		String filedisplay = ""+downloadfilesname+".zip"; //下载文件名称
		String filedownload = basePath + File.separator + ""+downloadfilesname+".zip"; //文件下载路径
		response.setContentType("applicaiton/x-download"); //设置类型为下载
		response.addHeader("Content-Disposition", "attachment;filename="+filedisplay);
		
		
		/*	注释：
		 * 
		 * InputStream 是字节输入流的所有类的超类，一般用子类FileInputStream
		 * OutputStream是字节输出流的所有类的超类，一般用子类FileOutputStream
		 * BufferedInputStream是带缓存区的字节输入流，减少磁盘访问次数，增加读取速度
		 * BufferedOutputStream是带缓存区的字节输出流，提高文件写入效率
		 *
		 */
		
		
		
		InputStream is = null; 
		OutputStream os = null; 
		BufferedInputStream bis = null; 
		BufferedOutputStream bos = null; 
		     
		is = new FileInputStream(new File(filedownload)); 
		bis = new BufferedInputStream(is); 
		os = response.getOutputStream(); 
		bos = new BufferedOutputStream(os); 
		     
		byte[] bt = new byte[1024]; //缓存容量
		int len = 0; 
		while((len = bis.read(bt)) != -1){ //从文件中按字节读取内容，到文件尾部时read方法将返回-1
			bos.write(bt,0,len); //将读取的字节转为字符串对象
		} 
		     
		bis.close(); //关闭输入流
		is.close(); 
		bos.close(); //关闭输出流
		os.close(); 
		
		System.out.println("--------------\n" + "下载文件为：" + downloadfilesname + "---------成功\n" + "--------------");
	}
}
