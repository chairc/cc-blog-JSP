<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>留言板</title>
</head>

<body>
	<div class="nav_all" style="background-color: #ffffff;">
		
	</div>
	<div class="work_style">
		<div style="width: 100%;height: 100px;">
			<div style="width:100%;float:left;padding-left: 3%;padding-bottom:15px;border-bottom: 2px solid #dddddd;"><h3>留言板</h3></div>			
		</div>
		
	
		<div style="width:100%;padding-left: 30%;padding-right: 30%;">
			<div>

			</div>
			<form action="AddMessageServlet" method="post">
				<div style="">
					<div>
						<% String name = (String)session.getAttribute("username"); %>
						<input type="text" class="form-control" name="addmessagename" value="<%=name%>" readonly="readonly">						
					</div>
					<div style="padding-top: 10px;">
						<textarea class="form-control" name="addmessageinfo" row="5" cols="30" style="height: 200px;" maxlength="255"></textarea>
					</div>				
				</div>
				<div style="padding-top:55px;text-align: center;">					
					<div style="float: left; width: 50%;">
						<input class="btn btn-primary" type="reset" style="width: 60%" value="重置">
					</div>
					<div style="float: left; width: 50%;">
						<input class="btn btn-primary" type="submit" style="width: 60%" value="留言">
					</div>											
				</div>
				<div style="text-align: center;float: left; width: 100%;padding-top: 20px;">
					<input class="btn btn-primary" type="button" onclick="JavaScript:history.go(-1)" style="width: 80%" value="返回">
				</div>
			</form>
		</div>
	</div>
  	
</body>
</html>
