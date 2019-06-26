<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>
html,body{
	width: 100%;
    height: 100%;
}
#container {
	width: 100%;
    height: 100%;
        }
</style>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/flat-ui.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/js/iconfont.js" type="text/javascript"></script> 

<title>Map</title>
</head>
<body>
	<div style="height: 55px; width: 55px; position: absolute; z-index: 199;">
		<a href="../backstage/IframeIndex.jsp" class="btn btn-default" style="width: 55px; height: 55px;"> 
			<svg class="icon icon_back" aria-hidden="true">
				<use xlink:href="#icon-fanhui"></use>
			</svg>
		</a>
	</div>
	<div id="container"></div>
	<div class="info">
    	<p id='info'></p>
	</div>
</body>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.14&key=28280ca3f178c4bf6fe0b2c4fab8f649&plugin=AMap.CitySearch"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.14&key=28280ca3f178c4bf6fe0b2c4fab8f649"></script>
<script type="text/javascript">
		var map = new AMap.Map('container',{
			resizeEnable: true, //是否监控地图容器尺寸变化
			mapStyle: 'amap://styles/macaron', //设置地图的显示样式
	        zoom:11,//级别
	        center: [116.98, 36.67],//中心点坐标116.98, 36.67
// 	        viewMode:'3D'//使用3D视图
	    });
		 //获取用户所在城市信息
	    function showCityInfo() {
	        //实例化城市查询类
	        var citysearch = new AMap.CitySearch();
	        //自动获取用户IP，返回当前城市
	        citysearch.getLocalCity(function(status, result) {
	            if (status === 'complete' && result.info === 'OK') {
	                if (result && result.city && result.bounds) {
	                    var cityinfo = result.city;
	                    var citybounds = result.bounds;
	                    document.getElementById('info').innerHTML = '您当前所在城市：'+cityinfo;
	                    //地图显示当前城市
	                    map.setBounds(citybounds);
	                }
	            } else {
	                document.getElementById('info').innerHTML = result.info;
	            }
	        });
	    }
	    showCityInfo();


// 		//实时路况图层
// 	    var trafficLayer = new AMap.TileLayer.Traffic({
// 	        zIndex: 10
// 	    });
// 	    map.add(trafficLayer);//添加图层到地图
// 	var url = 'https://webapi.amap.com/maps?v=1.4.14&key=28280ca3f178c4bf6fe0b2c4fab8f649&callback=onLoad';
// 	var jsapi = doc.createElement('script');
// 	jsapi.charset = 'utf-8';
// 	jsapi.src = url;
// 	document.head.appendChild(jsapi);
</script>

</html>