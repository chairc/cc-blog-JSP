<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>



<script type="text/javascript">
// function a(){
// 	console.log(1)
// 	$.ajax({  
// 		url:"./showinfo",//servlet文件的名称
// 		type:"POST",
// 		success:function(e){
// 			alert("servlet调用成功！");
// 		}
// 	});
	
// }
</script>

<script type="text/javascript">
// $(document).ready(function () {
// 	$.ajax({

//             type:"POST",
//             url:"",
//             datatype: "text",           
//             beforeSend:function(){$("#msg").html("logining");},                       
//             success:function(data){ 
//            $("#msg").html(decodeURI(data));            
//             },           
//             complete: function(XMLHttpRequest, textStatus){ 
//                alert(XMLHttpRequest.responseText);
//                alert(textStatus);                
//             },            
//             error: function(){               
//             }         
//          });

// })

</script>

</head>

<body>
	<div>
<!--  	<p>     -->
<%--    		今日时间： <%= (new java.util.Date())%> --%>
<!--  	</p>  -->

<!--     // Set refresh, autoload time as 5 seconds     -->
<!-- 	response.setIntHeader("Refresh", 5);     -->
<!-- 	// Get current time     -->
<!-- 	Calendar calendar = new GregorianCalendar();     -->
<!-- 	String am_pm;     -->
<!-- 	int hour = calendar.get(Calendar.HOUR);     -->
<!-- 	int minute = calendar.get(Calendar.MINUTE);     -->
<!-- 	int second = calendar.get(Calendar.SECOND);     -->
<!-- 	if(calendar.get(Calendar.AM_PM) == 0)       -->
<!-- 		am_pm = "AM";    else        -->
<!-- 			am_pm = "PM";     -->
<!-- 	String CT = hour+":"+ minute +":"+ second +" "+ am_pm;     -->
<!-- 	out.println("Crrent Time: " + CT + "\n");  -->
	</div>

	<div class="nav_all">
		<div style="height: 65px; width: 65px; position: absolute; z-index: 199;">
			<a href="Index.jsp" class="btn btn-primary" style="width: 65px; height: 65px;"> 
				<svg class="icon icon_back" aria-hidden="true"> 
					<use xlink:href="#icon-fanhui"></use> 
				</svg>
			</a>
		</div>
	</div>
	<div align="center">
		<div style="width: 100%; height: 40px;">
			<p><a id="a_click" href="showinfo" >今日事件：</a>Hello! Welcome to my Index!</p>
		</div>
		<div style="width: 100%; height: 210px;margin-top: 40px;" align="center" >
 			<div  style="width: 100%; height: 170px;" align="center" >
 				<c:forEach var="C" items="${InfoAll}"  >
            		<h1>${C.messagemaintitle}</h1>
                    	<p>${C.messagetitle}</p>
                 		<p>${C.messageinfo}</p>
         		</c:forEach>
 			</div>
		</div>
		<div class="login_style">
			<div class="border_thin_1">
				<form action="LoginServlet" method="post"  style="padding-top:-700px;">
					<div>
						<div>
							<table>
								<tr align="center">
									<td>用户名：</td>
									<td><input class="form-control" type="text" name="name"value=""></td>
								</tr>
								<tr align="center">
									<td>密&nbsp;&nbsp;&nbsp;码：</td>
									<td><input class="form-control" type="password" name="pwd"value=""></td>
								</tr>
							</table>
							<div id="login_btn1" style="padding-top: 8px;">
								<table>
									<tr>
<!-- 									<button type="button" class="btn btn-primary">登录</button> -->											
										<td><input class="btn btn-primary" style="width: 70px;" type="submit"value="登录"></td>
										<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td><input class="btn btn-primary" style="width: 70px;" type="reset"value="重置"></td>
									</tr>
								</table>
							</div>
						</div>
					</div>	
	 			</form>
			</div>
		
	 		<div  class="border_thin_2">
	 			<form action="Register.jsp">
	 				<input class="btn btn-primary" style="width: 170px;" type="submit"value="新用户注册" >
     			</form>
	 		</div>
		</div>	 	
	</div> 
	
</body>
</html>