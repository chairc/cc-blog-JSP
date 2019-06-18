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
<title>信息发布修改</title>
</head>
  
<body>
	<div class="nav_all" style="background-color: #ffffff;">
	
	</div>
	<div class="work_style">
		<div style="width: 100%;height: 100px;">
			<div style="width:100%;padding-bottom:15px;">
				<div style="width:100%;float:left;padding-left: 3%;">
					<h3>留言板</h3>
				</div>
				
				<div style="width:100%;float: left;padding-left: 3%;padding-top: 10px;">
					<a href="AddMessage.jsp">
						<input class="btn btn-default" type="submit" value="我要留言"/>
					</a>
				</div>
			</div>	
		</div>
	
	
		<div style="width:80%;margin:0 auto;padding-bottom: 300px;padding-top: 10px;">
			<!-- div -->
			<c:forEach var="M" items="${MessageAll}">
				<div style="border: 1px solid #dddddd;padding-top: 10px;">
					<div>
						<p>${M.addmessageid}</p>
					</div>
					<div>
						<p>${M.addmessagename}</p>
					</div>
					<div style="word-wrap: break-word">
						<p>${M.addmessageinfo}</p>
					</div>
				</div>
			</c:forEach>
			
 			<!-- table --> 
<!-- 			<table width="500" border="1" cellpadding="0" style="border:0px;background:none;border-color: transparent;"> -->
  				
<%--      			<c:forEach var="M" items="${MessageAll}"> --%>
<!--      				<tr> -->
<%--      					<td><input type="text" value="${M.addmessageid}" name="addmessageid" style="width:30px;border:0px;background:none;" readonly="readonly"></td> --%>
<%--        					<td><input type="text" value="${M.addmessagename}" name="addmessagename" style="width:50px;border:0px;background:none;" readonly="readonly"></td> --%>
<%--        					<td><input type="text" value="${M.addmessageinfo}" name="addmessageinfo"style="width:270px;border:0px;background:none;" readonly="readonly"></td>	       					 --%>
<!-- 	   				</tr>  				     				 -->
<%--     			</c:forEach>   --%>
<!--     		</table> -->
		</div>
	</div>
  	
</body>
</html>
