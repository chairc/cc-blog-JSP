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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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
                            <a class="header__link subdued" href="<%=basePath%>ChairC_Index.jsp">
                                <!--这是图标3（可根据从网上下载的图标中引用类型  注：请将类型写在main.css中）-->
                                <span aria-hidden="true" class="icon-denglu iconfont"></span>
                                <!--这是名字3-->
                                <span class="complimentary push--left">主页</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <a href="<%=basePath%>ChairC_Index.jsp" class="brand header__link">
                    <!--这是主页标签-->
                    <b class="brand__forename" style="color: #34495e">ChairC's Blog</b><b class="brand__surname"></b>
                </a>
            </div>
        </header>
    </div>
    <!--******************************上面是导航栏导航栏******************************-->



    <!--******************************下面是主页内容******************************-->
	<div
		style="width: 100%; height: auto; padding-top: 75px; background-color: #fff;">
		<div style="text-align: center; padding-left: 5%; padding-right: 5%;">
			<div style="width: 100%;height: 100%;">
					<div>
						<div style="text-align: center;width: 100%;">
							<p><a id="a_click" href="showinfo" >今日事件：</a>Hello! Welcome to my Index!</p>
						</div>
						<div>
							<div style="height: auto;"align="center">
								<div style="width: 100%;z-index: 666;" align="center">
									<c:forEach var="C" items="${InfoAll}">
										<h1>${C.messagemaintitle}</h1>
										<p>${C.messagetitle}</p>
										<p>${C.messageinfo}</p>
									</c:forEach>
								</div>
							</div>
						</div>
						<div style="padding-left: 30%; padding-right: 30%;padding-bottom: 10px;">
							<form action="LoginServlet" method="post"
								style="padding-top: -700px;">
								<div
									style="width: 100%;padding-top: 10px;">
									<div style="text-align: center;">
										<div style="float: left; width: 100%;">
											<input id="loginusername" class="form-control" type="text" name="name" placeholder="请输入用户名"
												value="" required="required"  onkeyup="value=value.replace(/[\W]/g,'') ">
										</div>
										<div style="float: right;">
											<p><font size="2px"><a href="<%=basePath%>jsp/basic/RetrieveAccount.jsp">忘记用户名</a></font></p>
										</div>
									</div>

									<div style="padding-top: 55px;text-align: center;">
										<div style="float: left; width: 100%;" >
											<input id="loginpassword" class="form-control" type="password" name="pwd" placeholder="请输入密码"
												value="" required="required">
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
<!-- 											<button id="loginbtn" class="btn btn-primary" style="width: 100%;">登录</button> -->
										</div>
										<div style="float:right; width: 49%;">
											<input class="btn btn-primary" style="width: 100%;"
												type="reset" value="重置">													
										</div>
									</div>											
								</div>
							</form>
							<div style="padding-top: 70px;padding-bottom: 10px;">
								<form action="<%=basePath %>jsp/basic/Register_new.jsp">
									<input class="btn btn-primary" style="width: 100%;"
										type="submit" value="新用户注册">
								</form>								
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>

	<div style="position: fixed;right: 10px;bottom: 80px;width: 50px;z-index: 1999;">
    	<button id="backtop" class="btn btn-info navguide">返回头部</button>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>

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

<script src="${pageContext.request.contextPath}/js/Index/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/js/Index/h.js" type="text/javascript"></script>

<!--下面是h.js的备份-->
<script src="${pageContext.request.contextPath}/js/Index/h.js(备份用时删掉括号内容)" type="text/javascript"></script>
<!--上面是h.js的备份-->


<!--下面是图标-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_iconfont.css">
<script src="${pageContext.request.contextPath}/js/Index/index_iconfont.js"></script>
<!--上面是图标-->
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
</script>

</html>
				