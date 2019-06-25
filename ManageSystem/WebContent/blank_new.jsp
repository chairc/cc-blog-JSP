<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% 
String name = (String)session.getAttribute("username");
String P = (String)session.getAttribute("pagenum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Success!</title>
<link rel="stylesheet"
	 href="${pageContext.request.contextPath}/css/bootsreap.min.css" 
	 type="text/css">
<link rel="stylesheet"
	 href="${pageContext.request.contextPath}/css/flat-ui.css" 
	 type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/swiper.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/portrait.css?t="
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/swiper.min.js"
	type="text/javascript"></script>
<link type="text/css" rel="stylesheet" charset="UTF-8"
	href="https://translate.googleapis.com/translate_static/css/translateelement.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/portrait.js?t="></script>		
	
</head>
<body>
	<div
		class="swiper-container swiper-container-initialized swiper-container-horizontal">
		<div class="swiper-wrapper"
			style="transition-duration: 0ms; transform: translate3d(-320px, 0px, 0px);">
			<div class="swiper-slide menu swiper-slide-prev">
				<div class="menu" style="">
					<div style="text-align: center;">
						<img src="avatorImg/<%=name%>header.jpg" class="menu-nav-img"><br>
						
						<%=name%>
					</div>
					<a href="IframeIndex.jsp">主界面</a><br> 
					<a href="Success_layui.jsp">layui界面</a><br>
					<a href="ShowAll_new.jsp">查看所有用户</a><br>
					<a href="Editall">编辑所有用户</a><br>
					<a href="Editinfo">修改信息</a><br>
					<a href="SearchLoginLogServlet">登陆日志</a><br>
					<a href="MessageServlet">留言板</a><br>
					<a href="Donation.jsp">前去赞助</a><br>
					<a href="Aboutus.jsp">关于我们</a><br>
					<a href="showinfo">退出</a>
				</div>
			</div>
			<div class="swiper-slide content swiper-slide-active">
				<div>
					<div class="menu-nav" style="width:100% ;height:65px;">
						<div class="menu-button" style="float: left;">
							<div class="bar"></div>
							<div class="bar"></div>
							<div class="bar"></div>					
						</div>						
					</div>
					<div class="menu-artical swiper-no-swiping">	
						<ul class="menu-artical-ul">
							<li id="liclick" class="menu-artical-li" style="width: 60px;">
								<a href="showinfo">
									<div>退出</div>
								</a>
							</li>
							<li class="menu-artical-li" style="width:auto;">
								<a id="btn_1" onclick="abc1()" style="cursor: pointer;">
									<div style="float: left;padding-left: 10px;">									
										<img src="avatorImg/<%=name%>header.jpg" class="menu-nav-img-s">																				
									</div>										
									<div style="float: left;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;padding-right: 10px;">
 										<%=name%>
									</div>										
								</a>								
							</li>
							<li id="liclick" class="menu-artical-li" style="width: 60px;">
								<a href="IframeIndex.jsp" target="aaa">
									<div>主页</div>
								</a>
							</li>
						</ul>					
					</div>
				</div>
				
				<div style="width: 100%;height: 100%;overflow:scroll; ">
					

					<!-- 				<font style="vertical-align: inherit;"><font -->
<!-- 					style="vertical-align: inherit;"> 内容幻灯片 </font></font> -->
				</div>
			</div>
		</div>
		<span class="swiper-notification" aria-live="assertive"
			aria-atomic="true"></span>
	</div>
</body>
<script type="text/javascript">
	var menuButton = document.querySelector('.menu-button');
	var openMenu = function() {
		swiper.slidePrev();
	};
	var swiper = new Swiper('.swiper-container', {
		slidesPerView : 'auto',
		initialSlide : 1,
		resistanceRatio : 0,
		slideToClickedSlide : true,
		on : {
			slideChangeTransitionStart : function() {
				var slider = this;
				if (slider.activeIndex === 0) {
					menuButton.classList.add('cross');
					// required because of slideToClickedSlide
					menuButton.removeEventListener('click', openMenu, true);
				} else {
					menuButton.classList.remove('cross');
				}
			},
			slideChangeTransitionEnd : function() {
				var slider = this;
				if (slider.activeIndex === 1) {
					menuButton.addEventListener('click', openMenu, true);
				}
			},
		}
	});
</script>
</html>