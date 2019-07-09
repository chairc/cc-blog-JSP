<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String P = (String)session.getAttribute("pagenum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<title>page_demo</title>
</head>
<body>
	<div class="work_style">
		<form action="" method="post">
			<div style="padding-left: 20%;padding-right: 20%;padding-bottom: 200px;">
				<c:forEach var="M" items="${userLogAll}">
					<div style="border: 1px solid #dddddd;padding-top: 10px;">
						<div>
<%-- 						<p>${M.logid}</p> --%>
						</div>
						<div>
							<p>
								<font color="#34495e">${M.logname}</font>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<font color="#6c757d">${M.timelog}</font>
							</p>
						</div>
					</div>
				</c:forEach>
				<div style="padding-top:10px; ">
					<div style="float: left;padding-right: 10px;">
						<input id="sllpageprev" name="sllpageprev" type="submit"  formaction="Page"
						class="btn btn-primary" value="上一页">
					</div>
					<div style="float: left;padding-right: 10px;">
						<input id="sllpagenext" name="sllpagenext" type="submit" formaction="Page"
						class="btn btn-primary" value="下一页">
					</div>
					<div style="float: left;padding-right: 10px;">
						<input id="page" type="number" name="page" value="<%=P%>" 
						placeholder="输入页码" required="required"
						class="form-control" style="width: 100px;">
					</div>
					<div style="float: left;">
						<input id="pageclick" type="submit" formaction="SearchLoginLogServlet"
						class="btn btn-primary" value="跳转">
					</div>								
				</div>			
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
$(function() {
	var prevban=document.getElementById('page').value;
	if(prevban==1){
		document.getElementById("sllpageprev").className="btn btn-primary disabled";
		$("#sllpageprev").attr("disabled","disabled");
	}
})
</script>
</html>
