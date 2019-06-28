<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
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
<link href="${pageContext.request.contextPath}/css/modules/layer/default/layer.css?v=3.1.1">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<%-- <script src="${pageContext.request.contextPath}/js/jq-paginator.js" type="text/javascript"></script> --%>
<script src="${pageContext.request.contextPath}/js/layui.js" charset="utf-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/lay/modules/layer.js" charset="utf-8" type="text/javascript"></script>

<base href="<%=basePath%>">
<title>ChairC's Blog - 所有用户页面</title>
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
		<div class="work_style" style="padding-top: 0px;">
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
    url:'${pageContext.request.contextPath}/Searchall',
    cols: [[
      {field:'id', width:80, title: 'ID', sort: true},
      {field:'name', width:80, title: '用户名'},
      {field:'pwd', width:80, title: '密码', sort: true},
      {field:'sex', width:80, title: '性别'},
      {field:'home', width:80, title: '籍贯'},
      {field:'info', width:160, title: '个人信息', sort: true},
      {field:'servertime', width:200, title: '最后登录时间'},
      {field:'ip', width:200, title: 'IP'}
    ]],
  });
});
</script>

</body>
</html>
