<%@page import="java.util.List"%>
<%@page import="com.flight.booking.tour.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	List<BbsVO> list = (List<BbsVO>) request.getAttribute("bbsList");
    	int bbsTotal =  list.size();
    	int bbsPage = (int) Math.ceil(bbsTotal / 20)+1;
    	int bbsLastPage = bbsTotal % 20;
    	int pageNum = 1;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= bbsLastPage %>
	<table border="1" id="bbsShow" width="1000px">
	<%
		if(pageNum != bbsPage){
			for(int i = 0 ; i < 20 ; i++){
	%>
			<tr>
				<td id="index<%=i+bbsPage*20%>" width="5%" height="50px" style="text-align: center"><%=i + 1 %></td>
				<td id="title<%=i+bbsPage*20%>" width="70%"></td>
				<td id="writer<%=i+bbsPage*20%>" width="10%"></td>
				<td id="area<%=i+bbsPage*20%>" width="5%"></td>
				<td id="time<%=i+bbsPage*20%>" width="10%"></td>
		</tr>
	<%
			}
		}else{
			for(int i = 0 ; i <bbsLastPage ; i++){
	%>
			<tr>
				<td id="index<%=i+bbsPage*20%>" width="5%" height="50px" style="text-align: center"><%=i + 1 %></td>
				<td id="title<%=i+bbsPage*20%>" width="70%"></td>
				<td id="writer<%=i+bbsPage*20%>" width="10%"></td>
				<td id="area<%=i+bbsPage*20%>" width="5%"></td>
				<td id="time<%=i+bbsPage*20%>" width="10%"></td>
			</tr>
	<%
			}
		}
	%>
	</table>
	
	<table>
		<tr>
		<% for(int i = 1 ; i <= 20; i++ ){ %>
			<td><button type="button" id="pageBtn"> <%= i %> </button></td>
		<% }%> 
		</tr>
	</table>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	$('.content').click(function(){
		var pageNum = $("#pageBtn").val();
		
		});
	</script>
</body>
</html>