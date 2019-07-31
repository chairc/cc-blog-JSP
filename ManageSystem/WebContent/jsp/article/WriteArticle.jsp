<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String name = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<%-- <link href="${pageContext.request.contextPath}/ueditor2/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor2/third-party/jquery.min.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/umeditor.config.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/umeditor.min.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/emotion/emotion.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/formula/formula.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/image/image.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/link/link.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/map/map.js"></script> --%>
<%-- <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor2/dialogs/video/video.js"></script> --%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flat-ui.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_iconfont.css" type="text/css">


<base href="<%=basePath%>">
<title>ChairC's Blog - 写文章</title>
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
    
    
	<div
		style="width: 100%; height: auto; padding-top: 75px; background-color: #fff;">
		<div style="text-align: center; padding-left: 5%; padding-right: 5%;">
			<div style="width: 100%; height: 150px; text-align: left;">
				<div style="width: 100%; float: left; padding-left: 3%;">
					<h3 style="margin-top: 30px;margin-bottom: 15px;">写文章</h3>
				</div>
			</div>

			<div style="width: 100%; padding-left: 10%; padding-right: 10%;">
				<form action="WriteArticleServlet" method="post">
					<div>
						<div>
							<input type="text" style="width: 100%;" class="form-control"
								name="articletitle" placeholder="文章题目">
						</div>
						<div style="padding-top: 10px;">							
							<input type="text" style="width: 100%;" class="form-control"
								name="articleauthor" value="<%=name%>" readonly="readonly">
						</div>
						<div style="padding-top: 10px;">
							<textarea class="form-control" name="articlemain" row="1000"
									cols="100" style=" width: 100%;height:1000px;"maxlength="15000"></textarea>
<!-- 							<textarea id="myEditor" class="form-control edui-body-container" -->
<!-- 									name="articlemain" contenteditable="true" -->
<!-- 									style="width: 100%;"></textarea> -->
						</div>
					</div>
					<div style="padding-top: 55px; text-align: center;padding-left: 30%;padding-right: 30%;">
						<div style="float: left; width: 49%;">
							<input class="btn btn-primary" type="reset" style="width: 100%;text-align: center;"
								value="保存">
						</div>
						<div style="float: right; width: 49%;">
							<input class="btn btn-primary" type="submit" style="width: 100%;text-align: center;"
								value="提交">
						</div>
					</div>
					<div
						style="text-align: center; float: left; width: 100%; padding-top: 20px;padding-left: 30%;padding-right: 30%;">
						<input class="btn btn-primary" type="button"
							onclick="JavaScript:history.go(-1)" style="width: 100%" value="返回">
					</div>
				</form>
			</div>
		</div>
	</div>
  	
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/h.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_iconfont.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/iconfont.js"></script>

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


<script type="text/javascript">
//	var um = UM.getEditor('myEditor');
</script>

<script type="text/javascript">
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
