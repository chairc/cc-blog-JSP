<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Success!</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" 
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flat-ui.css" 
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/swiper.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css"
	type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" 
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/swiper.min.js"
	type="text/javascript"></script>
<link type="text/css" rel="stylesheet" charset="UTF-8"
	href="https://translate.googleapis.com/translate_static/css/translateelement.css">
	
	
</head>
<body>
	<div
		class="swiper-container swiper-container-initialized swiper-container-horizontal">
		<div class="swiper-wrapper"
			style="transition-duration: 0ms; transform: translate3d(-320px, 0px, 0px);">
			<div class="swiper-slide menu swiper-slide-prev">
<!-- 				<font style="vertical-align: inherit;"><font -->
<!-- 					style="vertical-align: inherit;">菜单幻灯片</font></font> -->
				<div class="menu" style="">
					<a href="Index.jsp">公告</a><br>
					<a href="showinfo">登录</a><br>
					<a href="Donation.jsp" target="_blank">前去赞助</a><br>
					<a href="Aboutus.jsp" target="_blank">关于我们</a><br>
				</div>
			</div>
			<div class="swiper-slide content swiper-slide-active">
				<div>
					<div class="menu-nav" style="width: 100%;height: 65px;">
						<div class="menu-button" style="z-index: 777;">
							<div class="bar"></div>
							<div class="bar"></div>
							<div class="bar"></div>					
						</div>
					</div>
					<div class="menu-artical">
					
					</div>
				</div>
				
				<div style="width: 100%;height: 100%;overflow: auto;">
					<div style="position: absolute;z-index: 555;width: 100%;height: 100%;text-align: left;">
						<div style="text-align: center;padding-top: 65px;width: 100%;">
							
						</div>
						<div>
							<div style="width: 100%; height: 120px;"
								align="center">
								<div>
									<h1>注册</h1>
								</div>
							</div>
						</div>
						<div
							style="padding-left: 27%; padding-right: 27%; padding-bottom: 10px;">
							<div class="login_style">
								<div class="border_thin_1">
									<form action="RegisterServlet" method="post"
										style="padding-top: -700px">
										<div>
											<input class="form-control" name="name" type="text"
												placeholder="请输入用户名,请不要输入汉字"
												 onkeyup="value=value.replace(/[\W]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
										</div>
										<div style="padding-top: 13px;">
											<input class="form-control" name="pwd" type="password"
												placeholder="请输入密码">
										</div>
										<div style="padding-top: 13px;">
											选择性别: <input class="custom-radio" type="radio" name="sex"
												value="男" checked>男 <input class="custom-radio"
												type="radio" name="sex" value="女">女
										</div>
										<div style="padding-top: 13px;">
											<input class="form-control" name="home" type="text"
												placeholder="请输入家乡">
<!-- 											选择家乡: <select name="home"> -->
<!-- 												<option value="上海">上海</option> -->
<!-- 												<option value="北京" selected>北京</option> -->
<!-- 												<option value="济南">济南</option> -->
<!-- 												<option value="杭州">杭州</option> -->
<!-- 												<option value="海外">海外</option> -->
<!-- 											</select> -->
										</div>
										<div style="padding-top: 13px;">
											<textarea class="form-control" name="info" row="5" cols="30" placeholder="请填写个人信息"></textarea>
										</div>
										<div style="text-align: center; padding-top: 15px;">											
											<div style="float: left; width: 50%;">
												<input class="btn btn-primary" type="reset" style="width: 80%" value="重置">
											</div>
											<div style="float: left; width: 50%;">
												<input class="btn btn-primary" type="button" onclick="JavaScript:history.go(-1)" style="width: 80%" value="返回">
											</div>
										</div>
										<div style="text-align: center;float: left; width: 100%;padding-top: 20px;">
											<input class="btn btn-primary" type="submit" style="width: 90%" value="注册">
										</div>
									</form>

								</div>


							</div>
						</div>
					</div>

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