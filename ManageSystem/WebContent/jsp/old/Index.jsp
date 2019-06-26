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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>Welcome!</title>
<style type="text/css">
.index_style{
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
.index_mid{
	width: 50%; 
	float: left;
}
.index_bottom{
	width: 100%; 
	height: 20%; 
	text-align: center;
}
</style>
</head>
<body>
	<div class="index_style">
		<div class="nav_all"></div>


		<div class="work_style">
			<div style="width: 100%; height: 65%;">
				<div style="text-align: center;">
					<div style="padding-top: 40px;">
						<h2><font color="red">公告</font></h2>
					</div>
					<div style="padding-top: 50px;">
						<h3>
							<font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">欢迎大家来到我的还在施工且毫无防护的小型网站</font>
							</font>
						</h3>
          					<p>
          						<font style="vertical-align: inherit;">
          							<font style="vertical-align: inherit;"><font color="#E74C3C">功能：</font>简单的数据管理与应用</font>
          						</font>
          					</p>
                            <p>
                            	<font style="vertical-align: inherit;">
                            		<font style="vertical-align: inherit;"><font color="#E74C3C">施工进度：</font>留言板（6月1日-6月7日）</font>
                            	</font>
                            </p>
                            <p>
                            	<font style="vertical-align: inherit;">
                            		<font style="vertical-align: inherit;">钟表功能（6月1日-6月7日）</font>
                            	</font>
                            </p>
                            <p>
                            	<font style="vertical-align: inherit;">
                            		<font style="vertical-align: inherit;">普通用户管理界面（6月1日-6月7日）</font>
                            	</font>
                            </p>
                            <p>
                            	<font style="vertical-align: inherit;">
                            		<font style="vertical-align: inherit;"><font color="#E74C3C">更新：</font>更新了用户名注册重复判断//更新了用户界面新</font>
                            	</font>
                            </p>
                            
                            <p>
                            	<font style="vertical-align: inherit;">
                            		<font style="vertical-align: inherit;"><a href="http://47.102.117.38/demo/Headroom.js.html" target="_blank">其他测试网站</a></font>
                            	</font>
                            </p>
                            

					</div>
				</div>
			</div>
			<div class="index_bottom">
				<form action="showinfo">
					<input class="btn btn-primary" type="submit" value="进入" style="width: 10%; margin-top: 40px;">
				</form>
			</div>
		</div>
	</div>


</body>
</html>