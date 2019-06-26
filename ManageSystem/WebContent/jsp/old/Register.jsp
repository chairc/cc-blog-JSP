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

</style>

<title>Register</title>
</head>
<body>
	<div>
		<div class="nav_all">
			<div
				style="height: 65px; width: 65px; position: absolute; z-index: 199;">
				<a href="showinfo" class="btn btn-primary"
					style="width: 65px; height: 65px;"> <svg class="icon icon_back"
						aria-hidden="true"> <use xlink:href="#icon-fanhui"></use> </svg>
				</a>
			</div>
		</div>
		<div class="work_style">
			<div>
				<h1>注册</h1>
			</div>
			<div class="register_style"
				style="width: 100%; position: fixed; padding-left: 35%; padding-right: 35%; padding-top: 55px; margin: 0 auto;">
				<div class="border_thin register_border" style="width: 30%;">
					<form action="RegisterServlet" method="post"
						style="padding-top: -700px">
						<div>
							输入用户名:<input class="form-control" name="name" type="text" placeholder="请不要输入汉字">
						</div>
						<div>
							输入密码: <input class="form-control" name="pwd" type="password">
						</div>
						<div>
							选择性别: <input class="custom-radio" type="radio" name="sex"
								value="男" checked>男 <input class="custom-radio"
								type="radio" name="sex" value="女">女
						</div>
						<div>
							选择家乡: <select name="home">
								<option value="上海">上海</option>
								<option value="北京" selected>北京</option>
								<option value="济南">济南</option>
								<option value="杭州">杭州</option>
								<option value="海外">海外</option>
							</select>
						</div>
						<div>
							填写个人信息:<br>
							<textarea class="form-control" name="info" row="5" cols="30"></textarea>
						</div>
						<div style="text-align: center; padding-top: 8px;">
							<input class="btn btn-primary" type="reset" value="重置">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<input class="btn btn-primary" type="submit" value="注册">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>