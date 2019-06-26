<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<head>
<title>Sorry</title>
</head>
<body>
	<div class="nav_all">
		
	</div>
	<div class="work_style">
		<div class="border_thin" style="width: 100%; position: fixed; margin: 0 auto; text-align: center;">
			<div>
				<h1>失败</h1>
			</div>
			<div style="padding-top: 30px;">
				<div>
					<a href="showinfo">返回登录界面</a>
				</div>
				<div>
					<a href="Register.jsp">返回注册界面</a>
				</div>
				<div>
					<a href="showinfo">返回主界面</a>
				</div>
				<div>
					<a href="Donation.jsp" target="_blank">赞助一波？</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>