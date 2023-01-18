<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login display</title>
</head>
<body>
	
	<form action='login' method="post">
		<div>
			<label>아이디</label> <input id="memberId" name="userid" value="yunje1">
		</div>
		<div>
			<label>비밀번호</label> <input id="memberPass" name="password" value="1234">
		</div>
		<input type="submit" value="로그인"> 
	</form>
	<a href="SignUp.jsp">회원가입</a>


</body>
</html>