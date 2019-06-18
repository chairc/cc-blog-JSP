package servlet;
 

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import dao.JsonSelect;
import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;
 
@SuppressWarnings("serial")
public class Searchall extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		JsonObject json=new JsonSelect().selectall();
		System.out.println(json);
		out.print(json);
		
		
		//列表输出
//		UserDao ud = new UserDaoImpl();
//		List<User> userAll = ud.getUserAll();
//		request.setAttribute("userAll", userAll);
//		request.getRequestDispatcher("/ShowAll.jsp").forward(request, response);

		
		//json数据集
//		response.setContentType("application/json;charset=UTF-8");
//		Gson gson=new Gson();
//		JsonArray jsonarray=new JsonArray();
//		JsonObject json=new JsonObject();
//		json.addProperty("code", 0);
//		json.addProperty("msg", "");
//		json.addProperty("count", 1000);
//		JsonElement infoString=gson.toJsonTree(userAll);
//		json.add("data", infoString);		
//		System.out.println(jsonarray);

		//普通json格式
//		Gson gson=new Gson();
//		String infoString=gson.toJson(userAll);
//		PrintWriter out = response.getWriter();
//		System.out.println(infoString);
//		out.write(infoString);		
//		out.close();
		
		
		
				
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		
	}
	
}
