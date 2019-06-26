	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Success!</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layui.css" type="text/css">
<script src="${pageContext.request.contextPath}/js/layui.js"
	type="text/javascript"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">个人中心</div>
			<!-- 头部区域 -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">控制台</a></li>
				<li class="layui-nav-item"><a href="<%=basePath%>Editinfo">管理</a></li>
				<li class="layui-nav-item"><a href="<%=basePath%>Searchall">用户</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件</a>
						</dd>
						<dd>
							<a href="">消息</a>
						</dd>
						<dd>
							<a href="">授权</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item" style="width: 150px;"><a
					href="javascript:;" style="line-height: 60px;"> <img src="<%=basePath%>images/headimage.jpg"
						class="layui-nav-img">
					<% String name = (String)session.getAttribute("username"); %>
						<%=name%>
					</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="<%=basePath%>jsp/backstage/UserManage.jsp">基本资料</a>
						</dd>
						<dd>
							<a href="<%=basePath%>jsp/backstage/UserManage.jsp">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="<%=basePath%>showinfo">退了</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a href="<%=basePath%>jsp/backstage/IframeIndex.jsp"
						target="aaa">主界面</a></li>
					<li class="layui-nav-item"><a href="<%=basePath%>jsp/backstage/Success_new.jsp"
						>滑动界面</a></li>
					<li class="layui-nav-item"><a class="" href="javascript:;">所有小程序</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">列表一</a>
							</dd>
							<dd>
								<a href="javascript:;">列表二</a>
							</dd>
							<dd>
								<a href="javascript:;">列表三</a>
							</dd>
							<dd>
								<a href="">超链接</a>
							</dd>
						</dl></li>

					<li class="layui-nav-item"><a href="<%=basePath%>jsp/backstage/ShowAll_new.jsp" target="aaa">查看所有用户</a></li>
					<li class="layui-nav-item"><a href="<%=basePath%>Editall" target="aaa">编辑所有用户</a></li>
					<li class="layui-nav-item"><a href="<%=basePath%>Editinfo" target="aaa">修改公告</a></li>
					<li class="layui-nav-item"><a href="<%=basePath%>MessageServlet"
						target="aaa">留言板</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="<%=basePath%>jsp/message/AddMessage.jsp" target="aaa">我要留言</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;">解决方案</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">列表一</a>
							</dd>
							<dd>
								<a href="javascript:;">列表二</a>
							</dd>
							<dd>
								<a href="#">超链接</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="<%=basePath%>jsp/others/Donation.jsp"
						target="_blank">前去赞助</a></li>
					<li class="layui-nav-item"><a href="<%=basePath%>jsp/others/Aboutus.jsp">关于我们</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<iframe src="<%=basePath%>jsp/backstage/IframeIndex.jsp" name="aaa"
				style="width: 100%; height: 98%;"> </iframe>
		</div>

		<div class="layui-footer" style="text-align:center;">
			<!-- 底部固定区域 -->
			© 前端UI支持:layui/flatui || 后台程序编写:eclipse/Java || 服务器支持:apache-tomcat-8.0.39 || 数据库:MySql8.0
		</div>
	</div>

</body>
</html>