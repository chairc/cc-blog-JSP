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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/portrait.css?t="
	type="text/css">
<script src="${pageContext.request.contextPath}/js/swiper.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
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
<!-- 				<font style="vertical-align: inherit;"><font -->
<!-- 					style="vertical-align: inherit;">菜单幻灯片</font></font> -->
				<div class="menu" style="">
					<div style="text-align: center;">
						<% String name = (String)session.getAttribute("username"); %>
						<img src="avatorImg/<%=name%>header.jpg" class="menu-nav-img"><br>
						
						<%=name%>
					</div>
					<a href="IframeIndex.jsp" target="aaa">主界面</a><br>
					<a href="Success_layui.jsp">layui界面</a><br>
					<a href="ShowAll_new.jsp" target="aaa">查看所有用户</a><br>
					<a href="Editall" target="aaa">编辑所有用户</a><br>
					<a href="Editinfo" target="aaa">修改信息</a><br>
					<a href="MessageServlet" target="aaa">留言板</a><br>
					<a href="Donation.jsp" target="_blank">前去赞助</a><br>
					<a href="Aboutus.jsp" target="aaa">关于我们</a><br>
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
								<a href="showinfo">退出</a>
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
									主页
								</a>
							</li>
						</ul>					
					</div>
				</div>
				
				<div style="width: 100%;height: 100%;">
					<iframe src="IframeIndex.jsp" frameborder="no" border="0" name="aaa" style="width: 100%;height: 100%;padding-top: 65px;">
					
					</iframe>
				
				
<!-- 				<font style="vertical-align: inherit;"><font -->
<!-- 					style="vertical-align: inherit;"> 内容幻灯片 </font></font> -->
				</div>


				<div id="tcdemo1" class="tcdemo1">
					<div
						style="background-color: aliceblue; width: 100%; height: 40px;border-radius: 5px;">
						<div style="float: left; width: 80%; height: 13%;">
							<p>
								<Font>warning</Font>
							</p>
						</div>
						<div style="float: left; width: 20%;">
							<input type="button" class="btn btn-primary" id="btn_2"
								onclick="abc2()" style="float: right;" value="X">
						</div>
					</div>
					<div style="width: 100%; height: 87%; overflow: auto;">
						<!--             	<form action="UpLoad" method="post" enctype="multipart/form-data">  -->
						<!-- 					请选择上传的图片或文件:<input type="file" name="fileName"/> -->
						<!-- 					<input class="btn btn-primary" type="submit" value="上传"/>  -->
						<!-- 				</form> -->
						<div class="content">
							<!-- 用户头像 -->
							<div class="user-info" id="userInfo">
								<input type="text" value="<%=name%>" id="name"
									style="width: 200px; border: 0px; background: none; cursor: default; font-size: 25px;"
									readonly="readonly">
								<p>这个人很懒，什么都没说</p>
							</div>
							<!-- 选中图片 -->
							<div class="chose-box">
								<img src="" alt="" id="showImg"> <a href="javascript:;">
									<span>+</span> 选择图片 <input type="file" id="myFile">
								</a>
							</div>
							<!-- 确定上传头像 -->
							<div class="submit-box">
								<button id="btn" style="cursor: pointer;">确定上传</button>
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
	
	function ct(){
		window.opener.location.reload();//刷新Success_new.jsp
		
		}
</script>

</html>