<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index/index_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/Index/index_main.js"></script>
<base href="<%=basePath%>">
<title>ChairC's Blog - 写留言</title>
</head>

<body>
	<div>
        <header id="header" class="header header--fixed hide-from-print animated slideDown" role="banner">
            <div class="container">
                <nav id="nav" class="nav-wrapper" role="navigation">
                    <ul class="nav nav--main">
                        <li class="nav__item ">
                            <!--这是名字1的链接地址-->
                            <a class="header__link subdued" href="">
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
                <a href="<%=basePath%>ChairC_Index.jsp" class="brand header__link">
                    <!--这是主页标签-->
                    <b class="brand__forename" style="color: #34495e">ChairC's Blog</b><b class="brand__surname"></b>
                </a>
            </div>
        </header>
    </div>
    
    
	<div
		style="width: 100%; height: auto; padding-top: 75px; background-color: #fff;">
		<div style="text-align: center; padding-left: 5%; padding-right: 5%;">
			<div style="width: 100%; height: 150px; text-align: left;">
				<div style="width: 100%; float: left; padding-left: 3%;">
					<h3 style="margin-top: 30px;margin-bottom: 15px;">留言板</h3>
				</div>
			</div>

			<div style="width: 100%; padding-left: 30%; padding-right: 30%;">
				<form action="AddMessageServlet" method="post">
					<div style="">
						<div>
							<%
								String name = (String) session.getAttribute("username");
							%>
							<input type="text" style="width: 100%;" class="form-control"
								name="addmessagename" value="<%=name%>" readonly="readonly">
						</div>
						<div style="padding-top: 10px;">
							<textarea class="form-control" name="addmessageinfo" row="5"
								cols="30" style="height: 200px; width: 100%;" maxlength="120"></textarea>
						</div>
					</div>
					<div style="padding-top: 55px; text-align: center;">
						<div style="float: left; width: 49%;">
							<input class="btn btn-primary" type="reset" style="width: 100%;text-align: center;"
								value="重置">
						</div>
						<div style="float: right; width: 49%;">
							<input class="btn btn-primary" type="submit" style="width: 100%;text-align: center;"
								value="留言">
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
  	
</body>
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
</html>
