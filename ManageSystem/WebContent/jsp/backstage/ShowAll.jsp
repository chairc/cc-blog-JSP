<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@page contentType="text/html; charset=utf-8" %>
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/layui.css" rel="stylesheet" media="all">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<%-- <script src="${pageContext.request.contextPath}/js/jq-paginator.js" type="text/javascript"></script> --%>
<script src="${pageContext.request.contextPath}/js/layui.js" charset="utf-8" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/lay/modules/layer.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<base href="<%=basePath%>">
<title>ChairC's Blog - 编辑所有用户页面</title>
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
	padding-top: 0px;
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
.div_show{
	 float: left;
}
</style>

</head>
  
<body>
	<div>
		<div class="work_style">
<!-- 			<div class="showall_work_left"> -->
				
<!-- 			</div> -->

			<div class="showall_work_right">
				<div class="showall_style">
					<div style="width: 100%;height:100%;padding-left: 50px;padding-bottom: 150px;">
						<div style="width: 100%;height: 55px;">
							<div style="width: 100%; height: 10%;">
								<h3>${xiaoxi}</h3>
							</div>
						</div>
						<div style="width: 100%; height: 90%;">
											
							<form action="" method="post" target="_self">				
								<table width="1050px" border="1" cellpadding="0">
									<tr>
										<th style="width: 30px;">ID</th>
										<th style="width: 100px;">用户名</th>
										<th style="width: 20px;">性别</th>
										<th style="width: 100px;">密码</th>
										<th style="width: 100px;">电子邮箱</th>
										<th style="width: 100px;">电话</th>
										<th style="width: 50px;">家乡</th>
										<th style="width: 270px;">备注</th>
										<th style="width: 150px;">最后登陆时间</th>
										<th style="width: 150px;">Ip</th>
										<th style="width: 150px;">安全问题</th>
										<th style="width: 150px;">安全答案</th>
										<th style="width: 50px;">操作</th>
									</tr>
									<c:forEach var="U" items="${userAll}">
										<form action="UpdateServlet" method="post">
											<tr>
												<td><input type="text" value="${U.id}" name="id"
													style="width: 30px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.name}" name="name" maxlength="255"
													style="width: 100px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.sex}" name="sex" maxlength="255"
													style="width: 20px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.pwd}" name="pwd" maxlength="255"
													style="width: 100px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.email}" name="email" maxlength="255"
													style="width: 100px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.phone}" name="phone" maxlength="255"
													style="width: 100px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.home}" name="home" maxlength="255"
													style="width: 50px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.info}" name="info" maxlength="255"
													style="width: 270px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.servertime}" name="servertime"
													style="width: 150px; border: 0px; background: none;" disabled="disabled"></td>
												<td><input type="text" value="${U.ip}" name="ip"
													style="width: 150px; border: 0px; background: none;" disabled="disabled"></td>
												<td><input type="text" value="${U.safequestion}" name="safequestion" maxlength="255"
													style="width: 150px; border: 0px; background: none;"></td>
												<td><input type="text" value="${U.safeanswer}" name="safeanswer" maxlength="255"
													style="width: 150px; border: 0px; background: none;"></td>
												<td><a style="width: 50px;" href="DeleteServlet?id=${U.id}">删除</a> <input
													class="btn btn-primary" type="submit" value="更新" /></td>
											</tr>
										</form>
									</c:forEach>
								</table>
								
								<div style="padding-top:10px; ">
									<div style="float: left;padding-right: 10px;">
										<input id="sapageprev" name="sapageprev" type="submit"  formaction="Page"
										class="btn btn-primary" value="上一页">
									</div>
									<div style="float: left;padding-right: 10px;">
										<input id="sapagenext" name="sapagenext" type="submit" formaction="Page"
										class="btn btn-primary" value="下一页">
									</div>
									<div style="float: left;padding-right: 10px;">
										<input id="page" type="number" name="page" value="<%=P%>" 
										placeholder="输入页码" required="required"
										class="form-control" style="width: 100px;">
									</div>
									<div style="float: left;">
										<input id="pageclick" type="submit" formaction="Editall"
										class="btn btn-primary" value="跳转">
									</div>								
								</div>
							</form>							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
	var pagevalue = document.getElementById("page").value;
	if(pagevalue =="" || page.value == null){
		alert("请输入页码");
	}
	
	
</script>
<script type="text/javascript">
$(function() {
	var prevban=document.getElementById('page').value;
	if(prevban==1){
		document.getElementById("sapageprev").className="btn btn-primary disabled";
		$("#sapageprev").attr("disabled","disabled");
	}
})
</script>    
        


</body>
</html>
