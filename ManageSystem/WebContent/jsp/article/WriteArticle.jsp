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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
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
                	
                	<a href="<%=basePath%>" class="brand header__link nav__menu__a">
                    <!--这是主页标签-->
                    <b class="brand__forename" style="color: #34495e">ChairC's Blog</b><b class="brand__surname"></b>
                </a>  
                </div> 
                <div class="menu-button brand" style="float: left;position: absolute;">
					<div class="bar"></div>
					<div class="bar"></div>
					<div class="bar"></div>					
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
					<div style="">
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

<!--******************************上面是导航栏方法******************************-->
<script type="text/javascript">
//	var um = UM.getEditor('myEditor');
</script>
</html>
