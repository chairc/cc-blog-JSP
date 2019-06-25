<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>ChairC's Blog - 出现了一点意外</title>
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
	href="${pageContext.request.contextPath}/css/main.css"
	type="text/css">
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
				<div class="menu" style="">
					<a href="MessageServlet" target="aaa">留言板</a><br>
					<a href="Donation.jsp" target="_blank">前去赞助</a><br>
					<a href="About.jsp" target="_blank">关于我们</a><br>
				</div>
			</div>
			<div class="swiper-slide content swiper-slide-active">
				<div>
					<div class="menu-nav" style="width: 100%;height: 35px;">
						<div class="menu-button">
							<div class="bar"></div>
							<div class="bar"></div>
							<div class="bar"></div>					
						</div>
					</div>
					<div class="menu-artical">
					
					</div>
				</div>

				<div style="width: 100%; height: 100%;">

					<div class="border_thin"
						style="width: 100%; position: fixed; margin: 0 auto; text-align: center;margin-top: 65px;">
						<div>
							<h1>失败</h1>
						</div>
						<div style="padding-top: 30px;">
							<div>
								<a href="showinfo">返回登录界面</a>
							</div>
							<div>
								<a href="Register_new.jsp">返回注册界面</a>
							</div>
							<div>
								<a href="ChairC_Index.jsp">返回主界面</a>
							</div>
							<div>
								<a href="Donation.jsp" target="_blank">赞助一波？</a>
							</div>
						</div>
					</div>
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