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
<title>ChairC's Blog - 登录</title>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>	
	
</head>
<body>
	<div
		class="swiper-container swiper-container-initialized swiper-container-horizontal">
		<div class="swiper-wrapper"
			style="transition-duration: 0ms; transform: translate3d(-320px, 0px, 0px);">
			<div class="swiper-slide menu swiper-slide-prev">
				<div class="menu" style="">
					<a href="ChairC_Index.jsp">Blog</a><br>
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
					<div class="menu-artical swiper-no-swiping" style="z-index: 777;">
						<ul class="menu-artical-ul">
							<li id="liclick" class="menu-artical-li" style="width: 120px;">
								<a href="ChairC_Index.jsp">
									<div>Blog</div>
								</a>
							</li>
						</ul>
					</div>					
				</div>
				<div style="width: 100%;height: 100%;overflow: scroll;" class="swiper-no-swiping">
					<div style="position: absolute;z-index: 555;width: 100%;height: 100%;">
						<div style="text-align: center;padding-top: 65px;width: 100%;">
							<p><a id="a_click" href="showinfo" >今日事件：</a>Hello! Welcome to my Index!</p>
						</div>
						<div>
							<div style="width: 100%; height: 250px; margin-top: 40px;"
								align="center">
								<div style="width: 100%; height: 170px;position: absolute;z-index: 666;" align="center">
									<c:forEach var="C" items="${InfoAll}">
										<h1>${C.messagemaintitle}</h1>
										<p>${C.messagetitle}</p>
										<p>${C.messageinfo}</p>
									</c:forEach>
								</div>
							</div>
						</div>
						<div style="padding-left: 30%; padding-right: 30%;padding-bottom: 10px;">
							<div class="login_style">
								<div class="border_thin_1">
									<form action="LoginServlet" method="post"
										style="padding-top: -700px;">
										<div
											style="width: 100%;padding-top: 10px;">
											<div style="text-align: center;">
												<div style="float: left; width: 95%;padding-left: 5%;">
													<input class="form-control" type="text" name="name" placeholder="请输入用户名"
														value="">
												</div>
											</div>

											<div style="padding-top: 55px;text-align: center;">
												<div style="float: left; width: 95%;padding-left: 5%;" >
													<input class="form-control" type="password" name="pwd" placeholder="请输入密码"
														value="">
												</div>
											</div>
											<div style="padding-top: 70px;">
												<div style="float: left; width: 50%;">
													 <input
														class="btn btn-primary" style="width: 80%;" type="submit"
														value="登录">
												</div>
												<div style="float: left; width: 50%;">
													<input class="btn btn-primary" style="width: 80%;"
														type="reset" value="重置">
													
												</div>
											</div>											
										</div>
									</form>
									<div class="border_thin_2" style="padding-top: 70px;padding-bottom: 10px;">
										<form action="Register_new.jsp">
											<input class="btn btn-primary" style="width: 90%;"
												type="submit" value="新用户注册">
										</form>
									</div>
								</div>								
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
	
	//点击li跳转
	$(function () {
        $("#liclick").click(function () {
            var liclick = $(this).children("a");
            window.location.href = $(liclick[0]).attr("href");
        });
    });
</script>
</html>