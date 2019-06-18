<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@page contentType="text/html; charset=utf-8" %>
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
<link href="${pageContext.request.contextPath}/css/layui.css" rel="stylesheet" media="all">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<%-- <script src="${pageContext.request.contextPath}/js/jq-paginator.js" type="text/javascript"></script> --%>
<script src="${pageContext.request.contextPath}/js/layui.js" charset="utf-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/lay/modules/layer.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">

<base href="<%=basePath%>">
<title>所有用户页面</title>
<style type="text/css">
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
	padding-top: 20px;
}
.showall_work_left{
	width: 20%;
	height: 100%;
	float: left;
	padding-left:2%;
	background-color: #ECF0F1;
}
.showall_work_right{
	width: 100%;
	height: 100%;
	float: left;
}
</style>

</head>
  
<body>
	<div>
		<div class="nav_all" style="background-color: #ffffff;">
			<div style="height: 55px; width: 55px; position: absolute; z-index: 199;">
<!-- 				<a href="Success.jsp" class="btn btn-primary" -->
<!-- 					style="width: 55px; height: 55px;"> <svg class="icon icon_back" -->
<!-- 						aria-hidden="true"> <use xlink:href="#icon-fanhui"></use> </svg> -->
<!-- 				</a> -->
<!-- 				<form action="LoginServlet" method="post"> -->
<!-- 					<input type="submit" name="loginservletback" value="" href="Success.jsp" class="btn btn-primary" style="width: 55px; height: 55px;">  -->
<!-- 						<svg class="icon icon_back" aria-hidden="true">  -->
<!-- 							<use xlink:href="#icon-fanhui"></use>  -->
<!-- 						</svg> -->
<!-- 				</form> -->
			</div>
		</div>
		<div class="work_style">
<!-- 			<div class="showall_work_left"> -->
				
<!-- 			</div> -->

			<div class="showall_work_right">
				<div class="showall_style" style="padding-bottom:55px;">
					<table class="layui-hide" id="test"></table>
				</div>
			</div>
		</div>

	</div>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test',
    url:'/ManageSystem/Searchall',
    cols: [[
      {field:'id', width:80, title: 'ID', sort: true},
      {field:'name', width:80, title: '用户名'},
      {field:'pwd', width:80, title: '密码', sort: true},
      {field:'sex', width:80, title: '性别'},
      {field:'home', width:80, title: '籍贯'},
      {field:'info', width:160, title: '个人信息', sort: true}
    ]],
    page: true,
    limit:5,
    limits: [10, 20, 30]
  });
});
</script>
     
          


</body>
</html>
