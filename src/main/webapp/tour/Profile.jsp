<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var user = '<%=String.valueOf(session.getAttribute("userId"))%>'
	$.ajax({
		url : "selectUserId",
		type : "post",
		data : {
			userid : user
		},
		success : function(reciveData){
			$("#showID").html(reciveData.userid);
			$("#showName").html(reciveData.name);
			$("#showNick").html(reciveData.nickname);
			$("#showGen").html(reciveData.gender);
			$("#showPhone").html(reciveData.tel);
		},
		error : function(e){
			alert("error");
			console.log(e);
		}
	})
	$.ajax({
		url : "userBbs",
		type : "post",
		data : {
			userid : user
		},
		success : function(reciveBBS){
			$("#showArea").append('<div id="userBBSArea"><table border="1" style="text-align: center"  id="userBBS"><tr style="font-weight: BOLD;"><td>제목</td><td>지역</td><td>작성시간</td></tr></table></div>');
			for(var i = 0 ; i < reciveBBS.length ; i++){
				 $("#userBBS").append(
						'<tr><td><a href="/booking/tour/bbsOne?oneKey=' + reciveBBS[i].bbsnum + '">' + reciveBBS[i].title + '</a></td>' + 
						'<td>' + reciveBBS[i].area + '</td>' +
						'<td>' + reciveBBS[i].bbstime + '</td></tr>'
				 	) 
			}
		}
	})
	
})

</script>
</head>

<body>
<div id="usrInfoArea">
<table style="text-align: center"  border="1">
	<tr style="font-weight: bold;">
		<td colspan="2">개인정보</td>
	</tr>
	<tr>
		<td>ID</td>
		<td id="showID"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td id="showName"></td>
	</tr>
	<tr>
		<td>별명</td>
		<td id="showNick"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td id="showGen"></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td id="showPhone"></td>
	</tr>
	<tr>
		<td  colspan="2">
			<button>개인정보 수정</button>
		</td>
	</tr>
</table>
</div>

<button id="requestBBS">내가 쓴 게시글</button>
<script type="text/javascript">
$("#requestBBS").on("click",function(){
	var user = '<%=String.valueOf(session.getAttribute("userId"))%>'
	console.log("게시글 클릭됨");
	$("#showArea").empty();
	$.ajax({
		url : "userBbs",
		type : "post",
		data : {
			userid : user
		},
		success : function(reciveBBS){
			$("#showArea").append('<div id="userBBSArea"><table border="1" style="text-align: center"  id="userBBS"><tr style="font-weight: BOLD;"><td>제목</td><td>지역</td><td>작성시간</td></tr></table></div>');
			for(var i = 0 ; i < reciveBBS.length ; i++){
				 $("#userBBS").append(
						'<tr><td><a href="/booking/tour/bbsOne?oneKey=' + reciveBBS[i].bbsnum + '">' + reciveBBS[i].title + '</a></td>' + 
						'<td>' + reciveBBS[i].area + '</td>' +
						'<td>' + reciveBBS[i].bbstime + '</td></tr>'
				 	) 
			}
		}
	})
})
</script>

<button id="requestReply">내가 쓴 댓글</button>
<script type="text/javascript">
$("#requestReply").on("click",function(){
	var user = '<%=String.valueOf(session.getAttribute("userId"))%>'
	console.log("댓글클릭됨");
	$("#showArea").empty();
	$.ajax({
		url : "userReply",
		type : "post",
		data : {
			userid : user
		},
		success : function(reciveReply){
			$("#showArea").append(' <div id="userReplyArea"> <table border="1" id="userReply" style="text-align: center"> <tr style="font-weight: BOLD;"><td>게시판 ID</td><td>댓글내용</td><td>작성시간</td></tr></table> </div> ');
			for(var i = 0; i < reciveReply.length ; i++){
				$("#userReply").append(
						'<tr><td><a href="/booking/tour/bbsOne?oneKey=' + reciveReply[i].bbsnum + '">' + reciveReply[i].bbsnum + '</a></td>' + 
						'<td>' + reciveReply[i].recont + '</td>' +
						'<td>' + reciveReply[i].retime + '</td></tr>'
					)
			}
		}
	})
})
</script>

<div id="showArea"></div>

</body>
</html>