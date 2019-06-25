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
<script src="${pageContext.request.contextPath}/js/iconfont.js"></script>
<title>ChairC's Blog - 赞助</title>
<style type="text/css">
.donation_style{
	width: 100%;
	height: 100%
}
.nav_all{
	width:100%;
	height:55px;
	background-color:#2f4154;
	position: absolute;
}
.work_style{
	width: 100%;
	height:100%;
	position: absolute;
	z-index: 1;
	padding-top: 55px;
}
.donation_mid{
	width: 50%; 
	float: left;
}
.donation_bottom{
	width: 100%; 
	height: 20%; 
	text-align: center;
}
</style>
</head>
<body>
	<div class="donation_style">
		<div class="nav_all">
<!-- 			<div style="height: 55px; width: 55px; position: absolute; z-index: 199;"> -->
<!-- 				<a href="Index.jsp" class="btn btn-primary" style="width: 55px; height: 55px;">  -->
<!-- 					<svg class="icon icon_back" aria-hidden="true">  -->
<!-- 						<use xlink:href="#icon-fanhui"></use>  -->
<!-- 					</svg> -->
<!-- 				</a> -->
<!-- 			</div> -->
		</div>


		<div class="work_style">
			<div style="width: 100%; height: 65%;">
				<div style="text-align: center;">
					<div>
						<h3>请赞助我</h3>
					</div>
					<div>
						<div class="donation_mid">
							<img src="images/Alipay.jpg" width="350" height="350">
						</div>
						<div class="donation_mid">
							<img src="images/Wechatpay.jpg" width="350" height="350">
						</div>
					</div>
					<div>
						<div class="donation_mid">
							<h3>支付宝支付</h3>
						</div>
						<div class="donation_mid">
							<h3>微信支付</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="donation_bottom">
				<form onsubmit="window.close();">
					<input class="btn btn-primary" type="submit" value="我已赞助" style="width: 10%; margin-top: 40px;">
				</form>
			</div>
		</div>
	</div>


</body>
</html>