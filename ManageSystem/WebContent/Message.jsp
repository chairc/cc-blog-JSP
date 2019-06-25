<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String P = (String)session.getAttribute("pagenum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<base href="<%=basePath%>">
<title>ChairC's Blog - 留言板</title>
</head>
  
<body>
	<div class="nav_all" style="background-color: #ffffff;">
	
	</div>
	<div class="work_style">
		<div style="width: 100%;height: 100px;">
			<div style="width:100%;padding-bottom:15px;">
				<div style="width:100%;float:left;padding-left: 3%;">
					<h3>留言板</h3>
				</div>
				
				<div style="width:100%;float: left;padding-left: 3%;padding-top: 10px;">
					<a href="AddMessage.jsp">
						<input class="btn btn-default" type="submit" value="我要留言"/>
					</a>
				</div>
			</div>	
		</div>
	
	
		<div style="width:80%;margin:0 auto;padding-bottom: 300px;padding-top: 10px;">
			<!-- div -->
			<form action="" method="post">
				<c:forEach var="M" items="${MessageAll}">
					<div style="border: 1px solid #dddddd; padding-top: 10px;">
						<div>
							<p>${M.addmessageid}楼</p>
						</div>
						<div>
							<p>
								<font color="#34495e">${M.addmessagename}</font>
								&nbsp;&nbsp;&nbsp;&nbsp; <font color="#6c757d">${M.servertime}</font>
							</p>
						</div>
						<div style="word-wrap: break-word">
							<p>${M.addmessageinfo}</p>
						</div>
					</div>
				</c:forEach>
				<div style="padding-top:10px; ">
								<div style="float: left;padding-right: 10px;">
									<input id="mapageprev" name="mapageprev" type="submit"  formaction="Page"
									class="btn btn-primary" value="上一页">
								</div>
								<div style="float: left;padding-right: 10px;">
									<input id="mapagenext" name="mapagenext" type="submit" formaction="Page"
									class="btn btn-primary" value="下一页">
								</div>
								<div style="float: left;padding-right: 10px;">
									<input id="page" type="number" name="page" value="<%=P%>" 
									placeholder="输入页码" required="required"
									class="form-control" style="width: 100px;">
								</div>
								<div style="float: left;">
									<input id="pageclick" type="submit" formaction="MessageServlet"
									class="btn btn-primary" value="跳转">
								</div>								
							</div>
			</form>
		</div>
	</div>
  	
</body>
</html>
