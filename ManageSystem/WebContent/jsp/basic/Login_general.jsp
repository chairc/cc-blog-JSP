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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>ChairC's Blog - 登录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flat-ui.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_iconfont.css" type="text/css">

	
</head>
<body>
	<div>
        <header id="header" class="header header--fixed hide-from-print animated slideDown" role="banner">
            <div class="container">
                <nav id="nav" class="nav-wrapper" role="navigation">
                    <ul class="nav nav--main">
                    	<li class="nav__item ">
                            <a class="header__link subdued" href="<%=basePath%>ArticleServlet">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/article.svg">
								</span>
                                <span class="complimentary push--left">归档</span>
                            </a>
                        </li>
                        <li class="nav__item ">
                            <a class="header__link subdued" href="<%=basePath%>MessageIndexServlet">
                                <span>
                                	<img class="menu__img_svg" src="<%=basePath%>images/picture/index/message.svg">
                                </span>
                                <span class="complimentary push--left">留言</span>
                            </a>
                        </li>
                        <li class="nav__item ">
                            <a class="header__link subdued" href="<%=basePath%>PictureServlet">
                                <span>
                                	<img class="menu__img_svg" src="<%=basePath%>images/picture/index/picture.svg">
                                </span>
                                <span class="complimentary push--left">图片</span>
                            </a>
                        </li>
                        <li class="nav__item ">
                            <a class="header__link subdued" href="<%=basePath%>LoginBackstageServlet">
                                <span>
                                	<img class="menu__img_svg" src="<%=basePath%>images/picture/index/people.svg">
                                </span>
                                <span class="complimentary push--left">个人</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="nav__menu">
                	<a href="<%=basePath%>" class="brand header__link">
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
							<a href="<%=basePath%>">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/home.svg">
								</span>
								<span class="menu__ul_li">首页</span>
							</a>
						</li>
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
								<span class="menu__ul_li">留言</span>
							</a>
						</li>
						<li>
							<a href="<%=basePath%>PictureServlet">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/picture.svg">
								</span>
								<span class="menu__ul_li">图片栏</span>
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
							<a href="<%=basePath%>jsp/others/Donation.jsp">
								<span>
									<img class="menu__img_svg" src="<%=basePath%>images/picture/index/donate.svg">
								</span>
								<span class="menu__ul_li">赞助</span>
							</a>
						</li>
						<li>
							<a href="<%=basePath%>jsp/others/Aboutus.jsp">
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
		style="width: 100%; height: auto; padding-top: 75px; background-color: #fff;">
		<div style="text-align: center; padding-left: 5%; padding-right: 5%;">
			<div style="padding-left: 30%; padding-right: 30%;padding-bottom: 10px;">
				<div style="padding-bottom: 100px;">
					<h3>用户登录</h3>
				</div>
				<form action="LoginGeneralServlet" method="post"
					style="padding-top: -700px;">
					<div style="width: 100%;padding-top: 10px;">
						<div style="text-align: center;">
							<div style="float: left; width: 100%;">
								<input id="loginusername" class="form-control" type="text" name="name" placeholder="请输入用户名"
									value="" required="required" style="width: 100%"  onkeyup="value=value.replace(/[\W]/g,'') ">
							</div>
							<div style="float: right;">
								<p><font size="2px"><a href="<%=basePath%>jsp/basic/RetrieveAccount.jsp">忘记用户名</a></font></p>
							</div>
						</div>

						<div style="padding-top: 55px;text-align: center;">
							<div style="float: left; width: 100%;" >
								<input id="loginpassword" class="form-control" type="password" name="pwd" placeholder="请输入密码"
									value="" required="required" style="width: 100%">
							</div>
							<div style="float: right;">
								<p><font size="2px"><a href="<%=basePath%>jsp/basic/RetrieveAccount.jsp">忘记密码</a></font></p>
							</div>
						</div>
						<div style="float:left;width:100%;padding-top: 10px;text-align: center;">
							<div style="float:left; width: 49%;">
								<input id="loginbtn"
									class="btn btn-primary" style="width: 100%;" type="submit"
									value="登录">
<!-- 								<button id="loginbtn" class="btn btn-primary" style="width: 100%;">登录</button> -->
							</div>
							<div style="float:right; width: 49%;">
								<input class="btn btn-primary" style="width: 100%;"
									type="reset" value="重置">													
							</div>
						</div>											
					</div>
				</form>
				<div style="padding-top: 70px;padding-bottom: 10px;">
					<form action="<%=basePath%>Register" target="_blank">
						<input class="btn btn-primary" style="width: 100%;"
							type="submit" value="新用户注册">
					</form>								
				</div>
			</div>
		</div>
	</div>
	<div style="position: fixed;right: 10px;bottom: 80px;width: 50px;z-index: 1999;">
    	<button id="backtop" class="btn btn-info navguide">返回头部</button>
    </div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/iconfont.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
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
	
	/*滚动回头部*/
	var btn = document.getElementById('backtop');
	//var scrollTop  = document.documentElement.scrollTop||document.body.scrollTop;//兼容性写法，并且在滚动事件内可以实时获得滚动条距顶部的距离 ;
	btn.onclick = function(){
 	$('body,html').animate({scrollTop:0},300)
}

	/*登录*/
// 	var loginbtn = document.getElementById('loginbtn');
	
// 	var username = document.getElementById('loginusername');
// 	var password = document.getElementById('loginpassword');
	
// 	var data = {username:username,password:password};
// 	loginbtn.onclick = function loginbtn() {
// 		$.ajax({
// 			type:"POST",
// 			url:"/LoginServlet",
// 			dataType:"json",
// 			data:data,
// 			success:function(data){
// 				window.location.href = "/ChairC_Index.jsp";
// 			},
// 			error:function(e){
// 				alert("用户名或密码有错！");
// 			}
// 		})
// 	}




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
				