<%@page import="com.flight.booking.tour.ReplyVO"%>
<%@page import="com.flight.booking.tour.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="com.flight.booking.tour.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	BbsVO bbs = (BbsVO) request.getAttribute("one");
	String loginedUserId = String.valueOf(session.getAttribute("userId"));
%>
<%
List<ReplyVO> rlist = (List<ReplyVO>) request.getAttribute("rList");
String pRlist = rlist.toString();	//리스트 안에 내용이 있는지 없는지 파악하기 위해 toString을 이용하여 문자열을 담는다.

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=bbs.getTitle() %></title>
</head>
<body>
<table style="text-align: center" width="1000px">
	<tr>
		<td width="15%">작성자</td>
		<td width="65%">제목</td>
		<td width="20%">작성시간</td>
	</tr>
	<tr>
		<td><%=bbs.getUserId() %></td>
		<td><%=bbs.getTitle() %></td>
		<td> <%=bbs.getBbstime() %></td>
	</tr>
	<tr>
		<td colspan="3"><%=bbs.getbbscont()%></td>
	</tr>
	
</table>


댓글 
<br>
	<%if(pRlist.equals("[]")){ //담긴 문자열이 []과 동일하면 리스트가 비어있음을 의미%>
	<div>작성된 댓글이 없습니다.</div>
	<%}else{%>
		<table>
		<%
		for(int i = 0 ; i < rlist.size() ; i++){
		%>
		<tr style="text-align: center">
			<td width="15%"><c:out value="<%=rlist.get(0).getUserid() %>"></c:out></td>
			<td width="65%"><c:out value="<%=rlist.get(0).getRecont() %>"></c:out></td>
			<td width="20%"><c:out value="<%=rlist.get(0).getRetime() %>"></c:out></td>
		</tr>
		<%
			}
		%>
		</table>
		<%
		} 
		%>


	<%
		if (session.getAttribute("member") == null) {
	%>
	댓글 작성은 로그인 후 이용가능합니다.
	<%
		} else {
	%>
	<form action="/booking/tour/writeReply" method="post">
		<input type="hidden"  name="userid" value="<%=loginedUserId %>">
		<input type="hidden" value="  <%=bbs.getBbsnum() %>" name="bbsnum">
		작성자 : <%=session.getAttribute("member")  %><br>
		<input type="text" name="recont">
		<button type="submit">댓글쓰기</button>
	</form>
	<%
		}
	%>


</body>
</html>