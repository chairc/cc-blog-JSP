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
<link type="text/css" rel="stylesheet" href="css/portrait.css?t=">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/portrait.js?t="></script>
<style type="text/css">
.icon {
  	width: 70px;;
  	height: 70px;;
  	vertical-align: -0.15em;
  	fill: currentColor;
  	overflow: hidden;
}
.div_l{
	width:100%;
	height: 100%;
}
.div_m{
	width:100%;
	text-align: center;
}
.div_s{
	width:25%;
	height: 100%;
	float: left;
}
.div_s_t{
	 width:100%;
	 height: 80%;
}
.div_s_b{
	 width:100%;
	 height: 20%;	
}
.tcdemo1 {
    display: none;
    background-color:#ffffff;
    z-index: 999;
    width: 60%;
    height: 70%;
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    margin: auto;
    box-shadow: 0 4px 5px 0 rgba(0,0,0,0.14), 
    			0 1px 10px 0 rgba(0,0,0,0.12), 
    			0 2px 4px -1px rgba(0,0,0,0.2);
    border-radius: 5px;
}
.tcdemo2 {
    display: none;
    background-color: #202020;
    /* position: absolute; */
    position: fixed;
    height: 200%;
    width: 200%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 998;
    -moz-opacity: 0.8;
    opacity:.50;
    filter: alpha(opacity=80);/* 只支持IE6、7、8、9 */
}

</style>

<title>ChairC's Blog - 个人中心主页面</title>
</head>
<body>
	<div>
	
	
		<div id="tcdemo1" class="tcdemo1">
        	<div style="background-color: aliceblue;width:100%;height:40px;border-radius: 5px;">
            	<div style="float: left;width:80%;height: 13%;">
                	<p><Font>warning</Font></p>
            	</div>
            	<div style="float: left;width:20%;">
                	<input type="button" class="btn btn-primary" id="btn_2" onclick="abc2()" style="float: right;" value="X">
            	</div>
        	</div>
        	<div style="width:100%;height: 87%;overflow:auto;">
<!--             	<form action="UpLoad" method="post" enctype="multipart/form-data">  -->
<!-- 					请选择上传的图片或文件:<input type="file" name="fileName"/> -->
<!-- 					<input class="btn btn-primary" type="submit" value="上传"/>  -->
<!-- 				</form> -->
				<div class="content">
		<!-- 用户头像 -->
					<div class="user-info" id="userInfo">
						<% String name = (String)session.getAttribute("username"); %>
						<input type="text" value="<%=name%>" id="name"
							style="width: 200px; border: 0px; background: none;cursor: default;font-size: 25px;" readonly="readonly">
						<p>这个人很懒，什么都没说</p>
					</div>
		<!-- 选中图片 -->
					<div class="chose-box">
						<img src="" alt="" id="showImg">
						<a href="javascript:;">
							<span>+</span> 选择图片
							<input type="file" id="myFile">
						</a>
					</div>
		<!-- 确定上传头像 -->
					<div class="submit-box">
						<button id="btn_iframe" style="cursor: pointer;">确定上传</button>
					</div>
					<div>
						<p id="path"></p>
					</div>
				</div>
        	</div>
    	</div>
        		<!--遮罩层-->
    	<div id="tcdemo2" class="tcdemo2">
    	</div>	
	
	
	
		<div class="work_style">
			<div class="div_l">
				<div class="div_m">
					<div class="div_s">
						<div class="div_s_t">
							<a href="map/MSMap.jsp">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-telegram"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="map/MSMap.jsp">地图</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="http://47.102.117.38/demo/Headroom.js.html">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-online-conference"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="http://47.102.117.38/demo/Headroom.js.html">网站</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="http://47.102.117.38/plane/plane.html">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-paper-plane"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="http://47.102.117.38/plane/plane.html">飞机</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a id="btn_1" onclick="abc1()" style="cursor: pointer;">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-app"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a id="btn_1" style="cursor: pointer;"href="">修改头像</a>
						</div>
					</div>
				</div>
				<div class="div_m">
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-jisuanji"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">计算器</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-shipin"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">视频</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="UserManage.jsp">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-tixingshixiang"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="UserManage.jsp">修改信息</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-wenjianjia"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">文件夹</a>
						</div>
					</div>
				</div>
				<div class="div_m">
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-lvcheng"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">旅程</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-tianqi"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">天气</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-beiwanglu"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">备忘录</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-shangdian"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">商店</a>
						</div>
					</div>
				</div>
				<div class="div_m">
					<div class="div_s">
						<div class="div_s_t">
							<a href="http://47.102.117.38/AutoClock/index.html">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-shizhong"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="http://47.102.117.38/AutoClock/index.html">时钟</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-rili"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">日历</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-mails"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">邮件</a>
						</div>
					</div>
					<div class="div_s">
						<div class="div_s_t">
							<a href="">
								<svg class="icon" aria-hidden="true">
  									<use xlink:href="#icon-bookmark"></use>
								</svg>
							</a>
						</div>
						<div class="div_s_b">
							<a href="">书签</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
//显示隐藏弹窗
function abc1() {
    var a = document.getElementById("tcdemo1");
    var b = document.getElementById("tcdemo2");
    a.style.display = "block";
    b.style.display = "block";
    // $("body").css({overflow:"hidden"})  //隐藏滚动条
}
function abc2() {
    var a = document.getElementById("tcdemo1");
    var b = document.getElementById("tcdemo2");
    a.style.display = "none";
    b.style.display = "none";
    // $("body").css({overflow:"scroll"})  //使用滚动条
}


</script>
</html>