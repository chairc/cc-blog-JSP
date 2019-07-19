<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
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
<title>ChairC's Blog - 注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flat-ui.css"  type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_iconfont.css">

<style type="text/css">
.re{
	width: 100%; 
	padding-left: 30%; 
	padding-right: 30%;
	text-align: left;
}
@media screen and (max-width: 700px) {
	.re{
		width: 100%; 
		padding-left: 10%; 
		padding-right: 10%;
		text-align: left;
	}
}
</style>
</head>
<body>



    <!--******************************下面是导航栏导航栏******************************-->

    <div>
        <header id="header" class="header header--fixed hide-from-print animated slideDown" role="banner">
            <div class="container">
                <nav id="nav" class="nav-wrapper" role="navigation">
                    <ul class="nav nav--main">
                        <li class="nav__item ">
                            <!--这是名字1的链接地址-->
                            <a class="header__link subdued" href="<%=basePath%>jsp/picture/Picture_Index.jsp">
                                <!--这是图标1（可根据从网上下载的图标中引用类型  注：请将类型写在main.css中）-->
                                <span aria-hidden="true" class="icon-pic iconfont"></span>
                                <!--这是名字1-->
                                <span class="complimentary push--left">图片</span>
                            </a>
                        </li>
                        <li class="nav__item ">
                            <!--这是名字2的链接地址-->
                            <a class="header__link subdued" href="<%=basePath%>MessageIndexServlet">
                                <!--这是图标2（可根据从网上下载的图标中引用类型  注：请将类型写在main.css中）-->
                                <span aria-hidden="true" class="icon-comments iconfont"></span>
                                <!--这是名字2-->
                                <span class="complimentary push--left">留言板</span>
                            </a>
                        </li>
                        <li class="nav__item ">
                            <!--这是名字3的链接地址-->
                            <a class="header__link subdued" href="<%=basePath%>LoginBackstageServlet">
                                <!--这是图标3（可根据从网上下载的图标中引用类型  注：请将类型写在main.css中）-->
                                <span aria-hidden="true" class="icon-denglu iconfont"></span>
                                <!--这是名字3-->
                                <span class="complimentary push--left">个人</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="nav__menu">
                	<a href="<%=basePath%>" class="brand header__link">
                    	<!--这是主页标签-->
                    	<b class="brand__forename" style="color: #34495e">ChairC's Blog</b><b class="brand__surname"></b>
                	</a>  
                </div> 
                <div id="menuclick" class="menu-button brand" style="float: left;position: absolute;">
					<div class="bar"></div>
					<div class="bar"></div>
					<div class="bar"></div>					
				</div>
				<div id="menudiv" class="menu__div" >
					<div style="text-align: center;">
						<a href="<%=basePath%>" class="brand__forename" style="color: #34495e">
							<span style="font-size: 25px;">欢迎来到ChairC's Blog！</span>
						</a>						
					</div>
					<div class="menu__gif">
						<img src="<%=basePath%>images/picture/index/gifhome.gif">
					</div>
					<div style="width: 100%;height: 50px;border-bottom:1px solid #dddddd;text-align: center; ">
						<div style="width: 25%;float: left;">
							<a href="https://github.com/chairc" target="_blank">
								<img src="<%=basePath%>images/picture/index/github.svg" width="30px" height="30px" title="GitHub">
							</a>			
						</div>
						<div style="width: 25%;float: left;">
							<a href="https://weibo.com/u/1802917091" target="_blank">
								<img src="<%=basePath%>images/picture/index/weiBo.svg" width="30px" height="30px" title="微博">
							</a>						
						</div>
						<div style="width: 25%;float: left;">
							<a href="https://music.163.com/#/user/home?id=320416909" target="_blank">
								<img src="<%=basePath%>images/picture/index/wymusic.svg" width="30px" height="30px" title="网易云音乐">
							</a>							
						</div>
						<div style="width: 25%;float: left;">
							<a href="">
								<img src="<%=basePath%>images/picture/index/mail.svg" width="30px" height="30px" title="Email:chenyu1998424@gmail.com">
							</a>
						</div>
					</div>
					<ul class="menu__ul">
						<li>
							<a href="<%=basePath%>ArticleServlet">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/article.svg">
								</span>
								<span class="menu__ul_li">归档</span>
							</a>
						</li>
						<li>
							<a href="<%=basePath%>MessageIndexServlet">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/message.svg">
								</span>
								<span class="menu__ul_li">留言板</span>
							</a>
						</li>
						<li>
							<a href="">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/link.svg">
								</span>
								<span class="menu__ul_li">发现伙伴</span>
								
							</a>
						</li>
						<li>
							<span>
								<img class="menu__img_svg" src="<%=basePath%>images/picture/index/application.svg">
							</span>
							<span>小应用</span>
							<ul style="text-decoration: none;list-style: none;font-size: 15px;">
								<li class="menu__ul_li">
									<a href="<%=basePath%>jsp/garbageclass/Garbage.jsp">
										<span></span>
										<span>垃圾分类</span>
									</a>
								</li>
							</ul>
						</li>
						
						<li>
							<a href="">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/donate.svg">
								</span>
								<span class="menu__ul_li">赞助</span>
							</a>
						</li>
						<li>
							<a href="">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/aboutus.svg">
								</span>
								<span class="menu__ul_li">关于</span>
							</a>
						</li>
					</ul>
				</div>               
            </div>
        </header>
    </div>

    <!--******************************上面是导航栏导航栏******************************-->



    <!--******************************下面是主页内容******************************-->
	<div
		style="width: 100%; height: 1000px; padding-top: 75px; background-color: #fff;">
		<div style="text-align: center; padding-left: 5%; padding-right: 5%;">
			<div style="width: 100%; height: 100px; text-align: left;">
				<div style="width: 100%; float: left; padding-left: 3%;">
					<h3 style="margin-top: 30px; margin-bottom: 15px;">注册</h3>
				</div>
			</div>

			<div class="re" style="">
				<form action="<%=basePath%>RegisterServlet" method="post"
					style="padding-top: -700px">
					<div>
						请输入用户名：
						<input class="form-control" id="name" name="name" type="text" style="width: 100%;"
							placeholder="请输入用户名,请不要输入汉字" required="required"
							onkeyup="value=value.replace(/[\W]/g,'') " maxlength="255"
							onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
					</div>
					<div style="padding-top: 13px;">
						请输入密码：
						<input class="form-control" name="pwd" type="password" style="width: 100%;"
							placeholder="请输入密码" required="required" maxlength="255">
					</div>
					<div style="padding-top: 13px;">
						请输入邮箱：
						<input class="form-control" id="email" name="email" type="email" style="width: 100%;"
							placeholder="请输入邮箱" required="required" maxlength="255">
					</div>
					<div style="padding-top: 13px;">
						请输入手机号：
						<input class="form-control" id="phone" name="phone" type="number" style="width: 100%;"
							placeholder="请输入手机号" required="required" maxlength="20">					
					</div>
					<div style="padding-top: 13px;padding-bottom:13px;float: left;width: 100%;">
						请选择性别: <input class="custom-radio" type="radio" name="sex"
							value="男" checked>男 <input class="custom-radio"
							type="radio" name="sex" value="女">女
					</div>
					<div style="padding-top: 13px;">
						请输入家乡：
						<input class="form-control" name="home" type="text" style="width: 100%;"
							placeholder="请输入家乡">
					</div>
					<div style="padding-top: 13px;">
						请输入个人信息：
						<textarea class="form-control" name="info" row="5" cols="30" style="width: 100%;"
							placeholder="请填写个人信息" maxlength="255"></textarea>
					</div>
					
					<div style="padding-top: 13px;">
						请输入安全问题：
						<select id="safequestion" name="safequestion" class="form-control" style="width: 100%">
							<option value="我的生日" selected>我的生日（输入格式例如19980424）</option>
							<option value="我最好的朋友">我最好的朋友</option>
							<option value="最喜欢玩的游戏">最喜欢玩的游戏</option>
							<option value="最爱的一首歌" >最爱的一首歌</option>
						</select>
					</div>
					<div style="padding-top: 13px;">
						请输入安全答案：
						<input class="form-control" id="safeanswer" name="safeanswer" type="text" style="width: 100%;"
							placeholder="请输入安全问题" required="required" maxlength="255">
					</div>
					<div style="text-align: center; padding-top: 15px;">
						<div style="float: left; width: 49%;">
							<input class="btn btn-primary" type="submit" style="width: 100%;text-align: center;"
								value="注册">
<!-- 							<input id="btn_register" name="btn_register" class="btn btn-primary" type="button" style="width: 100%;text-align: center;" -->
<!-- 								value="注册"> -->
<!-- 							<button id="btn_register"class="btn btn-primary" style="width: 100%;text-align: center;">注册</button> -->
						</div>
						<div style="float: right; width: 49%;">
							<input class="btn btn-primary" type="reset" style="width: 100%;text-align: center;"
								value="重置">
						</div>						
					</div>
					<div
						style="text-align: center; float: left; width: 100%; padding-top: 20px;">
						<input class="btn btn-primary" type="button"
							onclick="JavaScript:history.go(-1)" style="width: 100%" value="返回">
					</div>
				</form>
			</div>
		</div>
	</div>

	<div style="position: fixed;right: 10px;bottom: 80px;width: 50px;z-index: 1999;">
    	<button id="backtop" class="btn btn-info navguide">返回头部</button>
    </div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/h.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_iconfont.js"></script>

<script>
    //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓下面是导航栏隐藏↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    (function () {
        var header = new Headroom(document.querySelector("#header"), {
            tolerance: 5,
            offset: 205,
            classes: {
                initial: "animated", //动画效果
                pinned: "slideDown", //固定时向下滑动
                unpinned: "slideUp" //取消固定时向上滑动
            }
        });
        header.init();

        //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓下面是按钮隐藏↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

        //    var bttHeadroom = new Headroom(document.getElementById("btt"), {
        //        tolerance : 0,
        //        offset : 500,
        //        classes : {
        //            initial : "slide",
        //            pinned : "slide--reset",
        //            unpinned : "slide--down"
        //        }
        //    });
        //    bttHeadroom.init();
    }());
</script>

<!--******************************上面是导航栏方法******************************-->
<script type="text/javascript">
	var btn = document.getElementById('backtop');
	//var scrollTop  = document.documentElement.scrollTop||document.body.scrollTop;//兼容性写法，并且在滚动事件内可以实时获得滚动条距顶部的距离 ;
	btn.onclick = function(){
 		$('body,html').animate({scrollTop:0},300)
	};	
</script>

<script type="text/javascript">
	
	//提取文本框的值利用ajax传入后台

	/*function setRegister(){
	
		var btn_r = document.getElementById('#btn_register');
		btn_r.onclick = function () {
			
			var map = {};
			map["name"] = document.getElementById('name').value;
			map["pwd"] = document.getElementById('pwd').value;
			map["email"] = document.getElementById('email').value;
			map["phone"] = document.getElementById('phone').value;
			map["sex"] = document.getElementById('sex').value;
			map["home"] = document.getElementById('home').value;
			map["info"] = document.getElementById('info').value;
			map["safequestion"] = document.getElementById('safequestion').value;
			map["safeanswer"] = document.getElementById('safeanswer').value;
			var str=JSON.stringify(list);
			return encodeURIComponent(str);
			
			alert(str);
			$.ajax({
				type:"POST",
				url:"RegisterServlet",
				dataType:"json",
				contentType : "application/x-www-form-urlencoded;charset=UTF-8",
				data:str,
				success:function(data){
					alert('Alert:Success!');
				},
				error:function(data){
					alert('Alert:Error!');
				}
			})
		}
	}*/
	
	
	
	//侧栏
	$("#menuclick").on("click", function(e){
		if($("#menudiv").is(":hidden")){
			$('#menudiv').show(800);
	    }else{
	    	$('#menudiv').hide(800);
	    }
		$(document).one("click", function(){
			$('#menudiv').hide(800);
		});		
		e.stopPropagation();	
	});

	$("#menudiv").on("click", function(e){
		e.stopPropagation();
	});
</script>

</html>
