$(document).ready(function(){
	setAvator();
});

function setAvator(){
	
	var fileObj = "";
	var imgData = "";
	var str=document.getElementById("name").value;
	
	$("#myFile").change(function () {
		// 构造一个文件渲染对象
		var reader = new FileReader();
		// 得到文件列表数组
		fileObj = $(this)[0].files[0];
		// 拿到文件数据
		reader.readAsDataURL(fileObj);

		reader.onload = function() {
			// 选择添加路径和类型
			imgData = reader.result;
			$("#showImg").attr("src", imgData);
			$("#showImg").addClass("current");
			$("#showImg").show();
		}
	});
	
	$("#btn").click(function(){	
		
		var formData = new FormData();
		
		
		//通过创建新文件对象来更改文件名
		var newfile = new File([fileObj], str+"header.jpg",{type:"image/jpeg"});
		formData.append("headerImg",newfile);
		
		$.ajax({
			method:"post",  
            timeout:5000,
			url: "PortraitServlet", 
            processData: false,    
            contentType: false,
            cache:false,
            data:formData,
			success: function(data){
				if(data == 1){
					$("#showHeader").remove();	
					var header = "<img id='showHeader' src='"+ imgData +"'/>";
					$("#userInfo").prepend(header);
					$("#showImg").hide();
					window.parent.location.reload();
					window.location.reload();
				}else{
					alert("上传失败"+data);
				}
			},
			error: function(){
				alert("Error XMLHttpRequest");
			}
		});
	});
	
	
	$("#btn_iframe").click(function(){	
		
		var formData = new FormData();
		
		
		//通过创建新文件对象来更改文件名
		var newfile = new File([fileObj], str+"header.jpg",{type:"image/jpeg"});
		formData.append("headerImg",newfile);
		
		$.ajax({
			method:"post",  
            timeout:5000,
			url: "PortraitServlet", 
            processData: false,    
            contentType: false,
            cache:false,
            data:formData,
			success: function(data){
				if(data == 1){
					$("#showHeader").remove();	
					var header = "<img id='showHeader' src='"+ imgData +"'/>";
					$("#userInfo").prepend(header);
					$("#showImg").hide();
					parent.location.reload();
				}else{
					alert("上传失败"+data);
				}
			},
			error: function(){
				alert("Error XMLHttpRequest");
			}
		});
	});
}

/*
// 封装一个通过$获取元素id的方法
function $(id) {
	return document.getElementById(id);
}

function getFileContent() {
	// 构造一个文件渲染对象
	var reader = new FileReader();
	// 得到文件列表数组
	var file = $("myFile").files;
	// 拿到文件数据
	reader.readAsDataURL(file[0]);

	reader.onload = function() {
		// 选择添加路径和类型
		$("showImg").style.display = "block";
		$("showImg").src = reader.result;
		$("showImg").className = "current";
		$("path").innerHTML = reader.result;
	}

}

// 头像设置函数

function btnClick() {
	var firstNode = $("userInfo").children;
	
	var box = $("showHeader");
	if(box) {
		$("userInfo").removeChild(box);
	}
	
	var cloneImg = $("showImg").cloneNode(true);
	cloneImg.id = "showHeader";
	
	$("userInfo").insertBefore(cloneImg,firstNode[0]);
	$("showImg").src = "";
	$("showImg").style.display = "none";
	
}*/