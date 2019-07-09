<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
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
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<base href="<%=basePath%>">
<title>ChairC's Blog - 信息发布修改</title>
</head>
  
<body>
	<div class="nav_all" style="background-color: #ffffff;">
		<div style="height: 55px; width: 55px; position: absolute; z-index: 199;">
<!-- 			<a href="Success.jsp" class="btn btn-primary" style="width: 55px; height: 55px;">  -->
<!-- 				<svg class="icon icon_back" aria-hidden="true">  -->
<!-- 					<use xlink:href="#icon-fanhui"></use>  -->
<!-- 				</svg> -->
<!-- 			</a> -->
		</div>
	</div>
	<div class="work_style">
		<div style="width: 100%;height: 10%;">
			<h1>${xiaoxi}</h1>
		</div>
	
	
		<div style="width:80%;margin:0 auto;">
			<table width="500" border="1" cellpadding="0" >
  				<tr>
  					<th>序号</th>
  					<th>头标题</th>
  					<th>小标题</th>
  					<th>信息</th>
  					<th>操作</th>
  				</tr>
     			<c:forEach var="E" items="${EditInfoAll}">
     				<form action="UpdateNoticeServlet" method="post">
     					<tr>
       						<td><input type="text" value="${E.messageid}" name="messageid" style="width:30px;border:0px;background:none;"></td>
       						<td><input type="text" value="${E.messagemaintitle}" name="messagemaintitle"style="width:270px;border:0px;background:none;" ></td>
       						<td><input type="text" value="${E.messagetitle}" name="messagetitle"style="width:270px;border:0px;background:none;" ></td>
	       					<td><input type="text" value="${E.messageinfo}" name="messageinfo" style="width:400px;border:0px;background:none;"></td>	       					
	       					<td><input class="btn btn-primary" type="submit" value="更新"/></td>
	   					</tr>
     				</form>     				
    			</c:forEach>  
    		</table>
		</div>
	</div>
  	
</body>
</html>
