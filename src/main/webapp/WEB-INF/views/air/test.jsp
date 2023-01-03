<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<!-- <script type="text/javascript" src="resources/js/jquery-3.6.1.js"></script> -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>항공권 최저가 </h2>
<hr>
<table border="1">
<tr>
<td>항공사</td>
<td>가격</td>

</tr>

<%
	ArrayList<String> airline = (ArrayList)request.getAttribute("airline");
	ArrayList<String> price = (ArrayList)request.getAttribute("price");
	for(int i = 0; i<10; i++) {
		String airs = airline.get(i);
		String pri = price.get(i);
		%>		
		<tr>
		<td><%=airs%></td>
		<td><%=pri%></td>
		</tr>
		
		<% 
	}
	%>


<%-- <c:forEach items="${airline}" var="one">
<tr>
<c:set var="num" value="${airline.one}"></c:set>
<td>${one}</td>
<c:if test="${num mod 2 ne 0}">
<td>${one}</td>
</c:if>
</tr>
</c:forEach> --%>

</table>
</body>
</html>