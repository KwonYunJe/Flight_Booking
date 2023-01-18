<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<form action="bbsInsert">
		<input type="hidden" name="userId" value="<%=session.getAttribute("userId") %>"><br>
		title: <input type="text" name="title"><br> contents: <input
			type="text" name="bbscont"><br> area: <input
			type="text" name="area"><br>
		<button type="submit">Submit</button>
	</form>
</body>
</html>