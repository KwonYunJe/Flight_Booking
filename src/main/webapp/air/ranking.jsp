<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body>
<a href="map_reduce">클릭</a>
<br>
<form action="insert_search">
	<input type="text" name="drank">
	<input type="hidden" name="date" id="date" >
	<button type="submit">검색</button>
</form>
<script type="text/javascript">
	document.getElementById('date').value = new Date();
</script>
</body>
</html>