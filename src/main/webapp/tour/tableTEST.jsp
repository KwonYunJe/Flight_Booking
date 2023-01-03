<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("member") == null){
%>
	<h1>로그인되어있지 않음</h1>
	<%} else{%>
	<h1>로그인되어있음</h1>
	<%} %>

	<h1>USER INSERT</h1>
	<form action="userCreate"><br>
		ID: <input type="text" name="id" value="yunje2"><br>
		PW: <input type="password" name="pw" value="1234"><br>
		Name: <input type="text" name="name" value="KWONYUNJE"><br>
		Tel: <input type="text" name="tel" value="010-1111-1111"><br>
		Gender: <input type="text" name="gender" value="male"><br>
		Nickname: <input type="text" name="nickname" value="YUEIS"><br>
		<button type="submit">Submit</button>
	</form><br>
	<hr>
	<h1>BBS INSERT</h1>
	<form action="bbsInsert">
		userID: <input type="text" name="userId" value="yunje1"><br>
		title: <input type="text" name="title"><br>
		contents: <input type="text" name="contents"><br>
		area: <input type="text" name="area"><br>
		<button type="submit">Submit</button>
	</form>
	<hr>
	<h1>BBS DELETE</h1>
	<form action="bbsDelete">
		Del ID : <input type="text" name="delKey"><br>
		<button type="submit">Submit</button>
	</form>
	<hr>
	<form action="bbsOne">
		Search id : <input type="text" name="oneKey">
		<button type="submit">Submit</button>
	</form>
	<br>
	<hr>
	<a href="bbsAll">
		<button>전체 검색 요청</button>
	</a>
</body>
</html>