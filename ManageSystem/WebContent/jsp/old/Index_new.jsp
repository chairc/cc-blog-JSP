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
<title>Success!</title>
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
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
// $(document).ready(function(){ 
// 	$.ajax({
// 		url:'IpServlet',
// 		dataType:'text',
// 	})
// }) 
</script>	
	
</head>
<body>
	<div
		class="swiper-container swiper-container-initialized swiper-container-horizontal">
		<div class="swiper-wrapper"
			style="transition-duration: 0ms; transform: translate3d(-320px, 0px, 0px);">
			<div class="swiper-slide menu swiper-slide-prev">
<!-- 				<font style="vertical-align: inherit;"><font -->
<!-- 					style="vertical-align: inherit;">菜单幻灯片</font></font> -->
				<div class="menu">
					<a href="showinfo">登录</a><br>
					<a href="Donation.jsp" target="_blank">前去赞助</a><br>
					<a href="Aboutus.jsp" target="_blank">关于我们</a><br>
				</div>
			</div>
			<div class="swiper-slide content swiper-slide-active">
				<div>
					<div class="menu-nav" style="width: 100%;height: 65px;">
						<div class="menu-button">
							<div class="bar"></div>
							<div class="bar"></div>
							<div class="bar"></div>					
						</div>
					</div>
					<div class="menu-artical swiper-no-swiping">
						<ul class="menu-artical-ul">
							<li id="liclick" class="menu-artical-li" style="width: 120px;">
								<a href="showinfo">
									登录
								</a>
							</li>
						</ul>
					</div>
				</div>
				
				<div style="width: 100%;height: 100%;overflow:auto;"class="swiper-no-swiping">
					<div style="text-align: center;padding-left: 5%;padding-right: 5%;">
						<div style="padding-top: 40px;">
							<h2>
								<font color="red">公告</font>
							</h2>
						</div>
						<div style="padding-top: 50px;">
							<h3>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">欢迎大家来到我的还在施工且毫无防护的小型网站</font>
								</font>
							</h3>
							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"><font color="#E74C3C">功能：</font>简单的数据管理与应用</font>
								</font>
							</p>
							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"><font color="#E74C3C">施工进度：</font>用户头像上传（<font color="#E74C3C">已完成</font>）</font>
								</font>
							</p>
							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">留言板（<font color="#E74C3C">已完成</font>）</font>
								</font>
							</p>
							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">普通用户修改界面（<font color="#E74C3C">已完成</font>）</font>
								</font>
							</p>
							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"><font color="#E74C3C">更新：</font>更新了用户名注册重复判断//全新用户界面（自适应手机/PC）<br>
									两种操作界面（layui建议电脑使用）//修改个人资料<br>
									修改了主界面和登录界面滑动bug</font>
								</font>
							</p>

							<p>
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"><a
										href="http://47.102.117.38/demo/Headroom.js.html"
										target="_blank">其他测试网站</a></font>
								</font>
							</p>


						</div>
						<div class="index_bottom" style="padding-bottom:20px;">
							<form action="showinfo">
								<input class="btn btn-primary" type="submit" value="进入"
									style="width: 100px;; margin-top: 40px;cursor:pointer; ">
							</form>
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
	
	//点击li跳转
	$(function () {
        $("#liclick").click(function () {
            var liclick = $(this).children("a");
            window.location.href = $(liclick[0]).attr("href");
        });
    });
</script>
</html>