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
int PageCount = (int)session.getAttribute("pageall");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>ChairC's Blog - 留言板</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flat-ui.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_iconfont.css" type="text/css">
	
	
</head>
<body>



    <!--******************************下面是导航栏导航栏******************************-->

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
			<div style="width: 100%; height: 200px; text-align: left;">
				<div style="width: 100%; float: left; padding-left: 3%;">
					<h3 style="margin-top: 30px;margin-bottom: 15px;">留言板</h3>
				</div>
				<div style="width: 100%; float: left; padding-left: 3%; padding-top: 10px;">
					<button id="backbottom" class="btn btn-default">我要留言</button>
				</div>
			</div>

			<div style="width: 80%; height: auto; margin: 0 auto; padding-bottom: 200px; padding-top: 10px; text-align: left;">
				<form action="" method="get" target="_self">
					<c:forEach var="M" items="${MessageAll}">
						<div style="border: 1px solid #dddddd;padding: 4%;border-radius: 15px;">
							<div>
								<span>${M.addmessageid}楼</span>
							</div>
							<div style="height: 50px;line-height: 50px;">							
								<span style="height: 50px;">
									<img src="<%=basePath%>avatorImg/${M.addmessagename}header.jpg" class="menu-nav-img-m">
									<font color="#34495e" size="5px">${M.addmessagename}</font>
								</span>															
							</div>
							<div>
								<span>
									<font color="#6c757d" size="3px">${M.servertime}</font>
								</span>
							</div>
							<div style="word-wrap: break-word">
								<span id="tb">${M.addmessageinfo}</span>
							</div>							
						</div>
						<div style="height: 10px;">
						
						</div>
					</c:forEach>
					<div style="height:auto;padding-top: 20px;padding-bottom: 60px;">
						<div style="float: left; padding-right: 10px;">
							<input id="maipageprev" name="maipageprev" type="submit"
								formaction="Page" class="btn btn-primary" value="上一页">
						</div>
						<div style="float: left; padding-right: 10px;">
							<input id="maipagenext" name="maipagenext" type="submit"
								formaction="Page" class="btn btn-primary" value="下一页">
						</div>
						<div style="float: left; padding-right: 10px;">
							<div style="float: left;">
								<input id="page" type="number" name="page" value="<%=P%>"
									placeholder="输入页码" required="required" class="form-control"
									style="width: 70px;">&nbsp;&nbsp;/&nbsp;&nbsp;
							</div>						
							<div  style="float: left;line-height: 42px;">							
								<input id="pagecount" type="number" name="pagecount" value="<%=PageCount%>"
									placeholder="输入页码" readonly="readonly"
									style="width: 40px; border: 0px; background: none;">
							</div>
						</div>
						<div style="float: left;">
							<input id="pageclick" type="submit"
								formaction="MessageIndexServlet" class="btn btn-primary"
								value="跳转">
						</div>
					</div>
				</form>
				<div id="addms" style="width: 100%;">
					<form action="AddMessageServlet" method="post">
						<div style="">
							<div style="padding-top: 10px;">
								<textarea class="form-control" name="addmessageinfo" row="5"
									id="con" wrap=hard cols="30" placeholder="登录后即可输入留言内容...若未登录请点击右上角登录"
									style="height: 200px; width: 100%;" maxlength="120"></textarea>
							</div>
						</div>
						<div style="padding-top: 55px; text-align: center;">
							<div style="float: left; width: 100%;">
								<input class="btn btn-primary" type="submit"
									style="width: 100px; text-align: center;" value="留言">
									
								<input class="btn btn-primary" type="reset"
									style="width: 100px; text-align: center;" value="重置">
															
								<input class="btn btn-primary" type="button"
									onclick="JavaScript:history.go(-1)" style="width: 100px"
									value="返回">
							</div>
						</div>
					</form>
				</div>
			</div>
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
    
    
    <div style="position: fixed;right: 10px;bottom: 80px;width: 50px;z-index: 1999;">
    	<button id="backtop" class="btn btn-info navguide">返回头部</button>
    </div>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_iconfont.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
<script src="${pageContext.request.contextPath}/js/Index/h.js" type="text/javascript"></script>


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
	
	
	//回到顶部
	var btn = document.getElementById('backtop');
	var btnms = document.getElementById('backbottom');
	//var scrollTop  = document.documentElement.scrollTop||document.body.scrollTop;
	//兼容性写法，并且在滚动事件内可以实时获得滚动条距顶部的距离 ;
	btn.onclick = function(){
 	$('body,html').animate({scrollTop:0},300)
	};

	
	//转到留言处
	btnms.onclick = function(){
	 	$('body,html').animate({scrollTop:$('#addms').offset().top},300)
	};
			
		
	//转回车	
	$(function(){
	     var temp= $("#tb").text().replace(/\n/g,'<br>');
	     $("#tb").html(temp);
	 });	
	
	
	//禁用翻页按钮
	$(function() {
		var prevban=document.getElementById('page').value;
		if(prevban==1){
			document.getElementById("maipageprev").className="btn btn-primary disabled";
			$("#maipageprev").attr("disabled","disabled");
		}
	});
	
	
	$(function() {
		var nextban=document.getElementById('page').value;
		var pagecount=document.getElementById('pagecount').value;
		if(nextban==pagecount){
			document.getElementById("maipagenext").className="btn btn-primary disabled";
			$("#maipagenext").attr("disabled","disabled");
		}
	});
	
	
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