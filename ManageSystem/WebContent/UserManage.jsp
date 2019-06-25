<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>ChairC's Blog - 修改个人资料</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Success!</title>
<link rel="stylesheet"
	 href="${pageContext.request.contextPath}/css/bootsreap.min.css" 
	 type="text/css">
<link rel="stylesheet"
	 href="${pageContext.request.contextPath}/css/flat-ui.css" 
	 type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/swiper.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/swiper.min.js"
	type="text/javascript"></script>
<link type="text/css" rel="stylesheet" charset="UTF-8"
	href="https://translate.googleapis.com/translate_static/css/translateelement.css">
	
	
</head>
<body>
	<div style="width: 100%; height: 100%;overflow: auto;padding-bottom: 150px;">
		<div
			style="position: absolute; z-index: 555; width: 100%; height: 100%; text-align: left;">
			
			<div>
				<div style="width: 100%; height: 120px;" align="center">
					<div>
						<h1>修改个人信息</h1>
					</div>
				</div>
			</div>
			<div
				style="padding-left: 27%; padding-right: 27%; padding-bottom: 10px;">
				<div class="login_style">
					<div class="border_thin_1">
						<form action="UpdateUserServlet" method="post"
							style="padding-top: -700px">
							<div style="text-align: center;padding-bottom: 45px;">

								<div style="width: 100%;float: left;">
									<% String name = (String)session.getAttribute("username"); %>
									<input class="form-control" style="width: 100%;height: 25px;" name="name" type="text" readonly="readonly" value="<%=name%>">
								</div>							
							</div>
							<div style="padding-top: 10px;">
								<input class="form-control" style="width: 100%;height: 25px;" name="nickname" type="text" placeholder="修改昵称（暂不可用）" disabled="disabled">
							</div>
							<div style="padding-top: 10px;">
								<input class="form-control" style="width: 100%;height: 25px;" name="pwd" type="password"placeholder="修改密码">
							</div>
							<div style="padding-top: 20px;">
								<p>修改性别:
									<input class="custom-radio" type="radio" name="sex"
										value="男" checked>男 <input class="custom-radio"
										type="radio" name="sex" value="女">女
								</p>
							</div>
							<div style="width: 100%;">
								<input class="form-control" name="home" style="width: 100%;height: 25px;" type="text"placeholder="修改家乡">															
							</div>
							<div style="padding-top: 10px;">								
								<textarea class="form-control" name="info" row="5" cols="30" style="width: 100%;height: 50px;"placeholder="修改个人信息"></textarea>
							</div>
							<div style="text-align: center; padding-top: 8px;">
								<div style="float: left; width: 50%;">
									<input class="btn btn-primary" type="reset" style="width: 80%;cursor: pointer;"
										value="重置">
								</div>
								<div style="float: left; width: 50%;">
									<input class="btn btn-primary" type="button"
										onclick="JavaScript:history.go(-1)" style="width: 80%;cursor: pointer;"
										value="返回">
								</div>
							</div>
							<div
								style="text-align: center; float: left; width: 100%; padding-top: 20px;">
								<input class="btn btn-primary" type="submit" style="width: 90%;cursor: pointer;" 
									value="修改">
							</div>
						</form>

					</div>


				</div>
			</div>
		</div>

		<!-- 				<font style="vertical-align: inherit;"><font -->
		<!-- 					style="vertical-align: inherit;"> 内容幻灯片 </font></font> -->
	</div>
</body>

</html>