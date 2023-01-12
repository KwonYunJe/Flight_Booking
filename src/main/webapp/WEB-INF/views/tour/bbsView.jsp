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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
let bbsNumber = <%=bbs.getBbsnum()%>;
let useridForDel = "<%=loginedUserId%>" ;
	
	$.ajax({
			url : "roadReply",
			type : "post",
			data :{
				oneKey : bbsNumber
			},
			dataType : 'json',
			contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
			success : function(replyData){
				for(var i = 0 ; i < <%=rlist.size()%> ; i++){
					$("#replyUserId" + i).html(replyData[i].userid);
					$("#replyCont" + i).html(replyData[i].recont);
					$("#replyTime" + i).html(replyData[i].retime);
					$("#replyID" + i ).html(replyData[i].reid);
					if(useridForDel == replyData[i].userid){
						$("#delTD" + i).html('<Button type="submit" id="delBtn" name="replyDel">삭제</Button>');
					}
				}
			}
	})
})

</script>
</head>
<body>
<a id="sb"></a>
<table style="text-align: center" width="1000px">
	<tr>
		<td width="10%">작성자</td>
		<td width="65%">제목</td>
		<td width="15%">작성시간</td>
		<%if(loginedUserId.equals(bbs.getUserId())){ %>
		<td width="10%">
		<form action="/booking/tour/bbsDelete">
			<input type="hidden" name="delKey" value="<%=bbs.getBbsnum() %>"> 
			<button>삭제</button>
		</form>
		</td>
		<%} %>
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
		<tr style="font-weight: bold; text-align: center" width="1000px">
			<td>작성자</td>
			<td>내용</td>
			<td>작성 시간</td>
		</tr>
		<%
		for(int i = 0 ; i < rlist.size() ; i++){
		%>
		<tr style="text-align: center">
			<td width="10%" id="replyUserId<%=i%>"> </td>
			<td width="65%" id="replyCont<%=i%>"></td>
			<td width="20%" id="replyTime<%=i%>"></td>
			<td width="5%"  id="delTD<%=i%>" class="delTDD"></td>
			<td id="replyID<%=i%>"></td>
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
		<input type="hidden"  id="rUserId" name="userid" value="<%=loginedUserId %>">
		<input type="hidden" id="bbsnum" value="  <%=bbs.getBbsnum() %>" name="bbsnum">
		작성자 : <%=session.getAttribute("userId")  %><br>
		<input type="text" id="recont" name="recont">
		<button type="button" id="sendReply">댓글쓰기</button>

<%} %>
<script type="text/javascript">
$("#sendReply").on("click",function(){
	let rUserID =  $("#rUserId").val();
	let rBbsNum = <%=bbs.getBbsnum()%>
	let rContent = $("#recont").val();
	
	
	$.ajax({
		url : "writeReply",
		type : "post",
		contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
		data : {
			userid : rUserID,
			bbsnum : rBbsNum,
			recont : rContent
		},
		dataType : 'json',
		success : function(writeResult){
			console.log("plz")
				document.location.href = document.location.href;
			},
		error : function(test){
			console.log(test)
		}
	})
	
})

$("#delBtn").on("click",function(){
	let delKey = @("replyID").val();
})

</script>

</body>
</html>