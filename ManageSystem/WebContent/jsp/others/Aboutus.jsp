<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<!-- 
	别看了 这只小猪就是你！

OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO@@@@@@@@OOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO@@[`          .[\@@@@OOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO@/                    [@@@OOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO@/                        =@OOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOO@@@@/[[[[[[\`.]@@@].                    ,@@OOOOOOOO
OOOOOOOOOOOOOO`   /@[.             /^     ,@.                   .@@OOOOOOO
OOOOOOOOOOOO/   /[                          \`                   .@OOOOOOO
OOOOOOOOOOOO../` .             .`            @.                   =@OOOOOO
OOOOOOOOOOOO@/  ,..           ..,.       .   =^                    @OOOOOO
OOOOOOOOOOO@`                             \]. \`       .           =@OOOOO
OOOOOOOOOO@`                                 ,[.      O            =@OOOOO
OOOOOOOOO@^ =====           =====                    /`            @OOOOOO
OOOOOOOO/.    ______________         .              .@            =@OOOOOO
OOOOOO@^     / @        @  @\                       .@           ,@OOOOOOO
OOOOOO@.     |@ @      @ @  |                .\      \\         ,@OOOOOOOO
OOOOOO@^     \ @        @   /`               .@.      ,@\      /@OOOOOOOOO
OOOOOOO@^     \____________/                 =@ .\     ./@@[.,@OOOOOOOOOOO
OOOOOOOOO@\`                                //.   /...]@@\ .]@@OOOOOOOOOOO
OOOOOOOOOOOO@@\]`                       .]@@\]]`,@@OOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOO@@@]]]]]]]]/@@@@@@@@@OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
				↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
						这就是你！！！！！
	
	我是彩蛋！
	你居然还能发现！
	看来你很喜欢看控制台！
	不如你帮我写前端吧！
	我想要很炫的那种
	
	好的我是铁直男！
	 
-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>ChairC's Blog - 关于我们</title>
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



	<div style="height: auto;;width: 100%;text-align: center;padding: 100px;">
		<div>
			<img src="<%=basePath%>images/AboutusImg/pig.jpeg">
		</div>
		<div style="height: 1000px;">
			
		</div>
	</div>
	
	
	
	<div class="bottom-all">
    	<div class="bottom-div-t">
    		<div class="bottom-div-t-l">
    			<p class="bottom-t-p-l">
    				<a href="http://www.beian.miit.gov.cn/" target="_blank" class="bottom-t-a-l">
        				<font color="#2c3e50">鲁ICP备19032053号</font>
        			</a>
    			</p>
    		</div>
    		<div class="bottom-div-t-r">
    			<p class="bottom-t-p-r">
    				<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=37010302000778" 
		 				target="_blank" class="bottom-t-a-r">
		 				<img src="<%=basePath%>images/beian.png">
		 				<font color="#2c3e50">鲁公网安备 37010302000778号</font>
		 			</a>
		 		</p>
    		</div>	      	
    	</div>	       
        <div class="bottom-div-b">
        	<p class="bottom-b-p" style="font-size: 12px;">
        		<a href="<%=basePath%>jsp/others/Aboutus.jsp" target="_blank" class="bottom-b-a">关于我们</a>
        		<a href="" target="_blank" class="bottom-b-a">联系我们</a>
			</p>
        </div>       
    </div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/h.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
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