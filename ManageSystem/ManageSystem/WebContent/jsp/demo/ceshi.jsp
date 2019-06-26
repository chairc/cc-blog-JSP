<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ceshi</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type:"POST",
			url:"src/dao/ShowInfoImpl/showinfo.do"
		})
	})
</script>

</head>
<body>

</body>
</html>