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
.blank_nav{
	position: absolute;
	z-index:111;
}
.blank_style{
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
.blank_work_left{
	width: 20%;
	height: 100%;
	float: left;
	background-color: #ECF0F1;
}
.blank_work_right{
	width: 80%;
	height: 100%;
	float: left;
}
.icon {
/*   width: 1em; */
/*   height: 1em; */
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
/*   text-align:center; */
}
.icon_back{
	
	height:35px;
	width:25px;
	color: #ffffff;
}
.nav_li:hover {
	background-color: #d5d2d2;
}
</style>

<title>blank!</title>
</head>
<body>
	<div class="blank_style">
		<div class="nav_all work_nav">
<!-- 			<div id="demo" style="height: 55px;">	 -->
<!-- 				<ul style="width: 10%;padding-left: 40px;"> -->
<!-- 					<li class="nav_li" style="width: 60px;cursor: pointer;"> -->
<!-- 						<div class="nav_back"> -->
<!-- 											<span class="fui-triangle-left-large" style="height: 55px;width: 55px;background-color: #ffffff;"></span> -->
<!-- 							<svg class="icon icon_back" aria-hidden="true"> <use -->
<!-- 								xlink:href="#icon-fanhui"></use> </svg> -->
<!-- 						</div> -->
<!-- 					</li> -->
<!-- 				</ul>			 -->
					
<!-- 			</div> -->
			<div style="height: 65px;width: 65px;position: absolute;z-index: 199;">
				<a href="#" class="btn btn-primary" style="width: 65px;height: 65px;">
					<svg class="icon icon_back" aria-hidden="true"> 
						<use xlink:href="#icon-fanhui"></use> 
					</svg>
				</a>
			</div>

		</div>
		<div class="work_style">
			<div class="blank_work_left">
				<div>

				</div>
			</div>
			<div class="blank_work_right" >
		
			</div>
		</div>
	</div>		
</body>
<script type="text/javascript">
$(function () {
    $("ul li").click(function () {
        var aclick = $(this).children("a");
        window.location.href = $(aclick[0]).attr("href");
    });
});
</script>
</html>