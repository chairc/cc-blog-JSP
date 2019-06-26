<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
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

<style type="text/css">
.success_nav{
	position: absolute;
	z-index:111;
}
.success_style{
	width:100%;
	height: 100%;
}
.work_style{
	width: 100%;
	height:100%;
	position: absolute;
	z-index: 1;
	padding-top: 55px;
}
.success_work_left{
	width: 20%;
	height: 100%;
	float: left;
	padding-left:2%;
	background-color: #ECF0F1;
}
.success_work_right{
	width: 80%;
	height: 100%;
	float: left;
}
</style>

<title>Success!</title>
</head>
<body>
	<div class="success_style">
		<div class="nav_all success_nav">
			<div
				style="height: 55px; width: 55px; position: absolute; z-index: 199;">
				<a href="showinfo" class="btn btn-primary" style="width: 55px; height: 55px;"> 
					<svg class="icon icon_back" aria-hidden="true">
						<use xlink:href="#icon-fanhui"></use>
					</svg>
				</a>
			</div>
		</div>
		<div class="work_style">
			<div class="success_work_left">
				<div>
					<h3>欢迎用户</h3><br>
					<h3><input type="text" value="${xiaoxi}" name="name_id" style="border: 0px; background: none;"></h3><br>
					<a href="IframeIndex.jsp" target="aaa">主界面</a><br>
					<a href="Searchall" target="aaa">查看所有用户</a><br>
					<a href="Editinfo" target="aaa">修改信息</a><br>
					<a href="MessageServlet" target="aaa">留言板</a><br>
					<a href="Donation.jsp" target="_blank">前去赞助</a><br>
				</div>
			</div>
			<div class="success_work_right" >
				<div>
					<iframe src="IframeIndex.jsp" name="aaa" style="width: 100%;height: 100%;">
					
					</iframe>
				</div>
			</div>
		</div>
	</div>		
</body>
</html>