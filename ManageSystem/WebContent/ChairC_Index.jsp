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
<title>ChairC's Blog - 首页</title>
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

    <!--******************************下面是背景特效******************************-->

    <script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99"
        src="js/Index/canvas-nest.min.js"></script>

    <!--******************************上面是背景特效******************************-->


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
                <a href="<%=basePath%>ChairC_Index.jsp" class="brand header__link">
                    <!--这是主页标签-->
                    <b class="brand__forename" style="color: #34495e">ChairC's Blog</b><b class="brand__surname"></b>
                </a>
            </div>
        </header>
    </div>

    <!--******************************上面是导航栏导航栏******************************-->



    <!--******************************下面是主页内容******************************-->
    <div style="width:100%;height:2000px;padding-top: 75px;background-color: #fff;">
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
                        style="vertical-align: inherit;"><font color="#E74C3C">施工进度：</font>！！IPhone兼容性严重问题！！（<font color="#E74C3C">未完成！！严重！</font>）</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;">文件下载系统（详细在主页下方工具下载）（<font color="#E74C3C">已完成</font>）</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;">分页系统（<font color="#E74C3C">已完成</font>）</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;">用户登录时间日志（<font color="#E74C3C">已完成</font>）</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;">用户头像上传（<font color="#E74C3C">已完成</font>）</font>
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
                <form action="LoginBackstageServlet">
                    <input class="btn btn-primary" type="submit" value="进入"
                        style="width: 100px; margin-top: 40px;cursor:pointer; ">
                </form>
            </div>
            <div>
            	<p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">开发模式：</font>经典三层架构开发模式</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">编程工具：</font>eclipse//VSCode</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">数据库：</font>MySQL8.0</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">前端工具：</font>bootstrap//flat-ui//headroom</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">框架工具：</font>未使用（ssm再开发中...）</font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> <font
                        style="vertical-align: inherit;"><font color="#E74C3C">GitHub：</font><a href="https://github.com/chairc/JSP" target="_blank">https://github.com/chairc/JSP</a></font>
                    </font>
                </p>
                <p>
                    <font style="vertical-align: inherit;"> 
                    	<font style="vertical-align: inherit;">                    		
                    		<form action="DownLoadFiles" method="post">
                    			<font color="#E74C3C">下载工具：</font>
                       			<select name="selectfilename" class="form-control">
                       				<option value="eclipse" selected>Eclipse</option>
									<option value="jdk">JDK1.8</option>
									<option value="mysql">MySQL8.0</option>
									<option value="tomcat">Tomcat8.0</option>
									<option value="navicat">Navicat</option>
                       			</select>
                        		<input type="submit" class="btn btn-inverse" 
                        		name="downloadfiles" id="downloadfiles" value="下载">
                        	</form>
                        </font>
                    </font>
                </p>

            </div>
        </div>
    </div> 
    
    
    <div style="position: fixed;right: 10px;bottom: 80px;width: 50px;z-index: 1999;">
    	<button class="btn btn-info navguide" onclick="SetHome(this,window.location)">设为首页</button>
    	<div style="width: 50px;height: 5px;"></div>
    	<button class="btn btn-info navguide" onclick="collect(document.title,window.location)">收藏本站</button>
		<div style="width: 50px;height: 5px;"></div>
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
	var btn = document.getElementById('backtop');
	//var scrollTop  = document.documentElement.scrollTop||document.body.scrollTop;//兼容性写法，并且在滚动事件内可以实时获得滚动条距顶部的距离 ;

	btn.onclick = function(){

 	$('body,html').animate({scrollTop:0},300)

}

	// 设置为主页 
	function SetHome(obj,vrl){ 
		try{ 
			obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl); 
		}catch(e){ 
			if(window.netscape) { 
				try { 
					netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"); 
				}catch (e) { 
					alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。"); 
				} 
				var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch); 
				prefs.setCharPref('browser.startup.homepage',vrl); 
			}else{ 
				alert("您的浏览器不支持，请按照下面步骤操作：1.打开浏览器设置。2.点击设置网页。3.输入："+vrl+"点击确定。"); 
			} 
		} 
	} 
	
	// 加入收藏 兼容360和IE6 
	function collect(sTitle,sURL){ 
		try{ 
			window.external.addFavorite(sURL, sTitle); 
		}catch (e){ 
			try{ 
				window.sidebar.addPanel(sTitle, sURL, ""); 
			}catch (e){ 
				alert("加入收藏失败，请使用Ctrl+D进行添加"); 
			} 
		} 
	} 
</script>
</html>