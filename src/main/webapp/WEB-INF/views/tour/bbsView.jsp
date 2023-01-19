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
<<<<<<< Updated upstream
	String loginedUserId = String.valueOf(session.getAttribute("userId"));
=======
	String loginedUserId = String.valueOf(session.getAttribute("member"));
	String loginedUser = String.valueOf(session.getAttribute("userid"));
>>>>>>> Stashed changes
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
let useridForDel = "<%=loginedUser%>" ;
	
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
						$("#indelKey" + i).html('<button type="submit">삭제</button>'); 
<<<<<<< Updated upstream
						$("#delKey" + i).attr('value' , replyData[i].reid);
							
					
=======
						//$("#delTD" + i).html('<Button type="submit" id="delBtn" class="btn btn-primary" name="replyDel">삭제</Button>');
						$("#delKey" + i).attr('value' , replyData[i].reid);
>>>>>>> Stashed changes
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
		<table style=" text-align: center" width="1000px">
		<tr style="font-weight: bold;">
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
			<td></td>
			<td width="5%"   id="delTD<%=i%>">
			<%if(String.valueOf(loginedUserId).equals(String.valueOf(rlist.get(i).getUserid()))){ %>
				<form action="deleteReply" method="post">
					<div id="indelKey<%=i%>"></div>
					<input type="hidden" name="reid" value="" id="delKey<%=i%>">
					<input type="hidden" name="bbsnum" value="<%=bbs.getBbsnum()%>">
				</form>
			<%}%>
			</td>
			
			<%-- <td id="replyID<%=i%>"></td> --%>
		</tr>
	
		<%
			}
		%>
		</table>
		<%
		} 
		%>
	

<<<<<<< Updated upstream
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
=======
			<div class="container">
			<a id="sb"></a>
            	<div class="row">
                	<div class="card-body p-0">
                    <table class="table table-condensed">
                        <thead>
                            <tr align="center">
                                <th width="10%">제목</th>
                                <th width="90%"><%=bbs.getTitle() %></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>작성일</td>
                                <td><%=bbs.getBbstime() %></td>
                            </tr>
                            <tr>
                                <td>글쓴이</td>
                                <td>
                                <%=bbs.getUserId() %> <span style='float:right'>조회 : 0</span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <p style="color:black;"><%=bbs.getbbscont()%></p>
                       
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <%if(pRlist.equals("[]")){ //담긴 문자열이 []과 동일하면 리스트가 비어있음을 의미%>
					<div>작성된 댓글이 없습니다.</div>
					<%}else{%>
					
                    <table id="commentTable" class="table table-condensed"></table>
                    <table class="table table-condensed">
                        <tr align="center">
                                <th width="5%">no</th>
                                <th width="5%">작성자</th>
                                <th width="70%">내용</th>
                                <th width="10%">작성시간</th>
                                <th width="10%"></th>
                            </tr>
                        <%
							for(int i = 0 ; i < rlist.size() ; i++){
						%>
						<tr style="text-align: center">
							<td id="replyID<%=i%>"></td>
							<td id="replyUserId<%=i%>"> </td>
							<td id="replyCont<%=i%>"></td>
							<td id="replyTime<%=i%>"></td>
							<td width="5%"   id="delTD<%=i%>">
							<%if(String.valueOf(loginedUser).equals(String.valueOf(rlist.get(i).getUserid()))){ %>
								<form action="deleteReply" method="post">
									<div id="indelKey<%=i%>"></div>
									<input type="hidden" name="reid" value="" id="delKey<%=i%>">
									<input type="hidden" name="bbsnum" value="<%=bbs.getBbsnum()%>">
								</form>
							<%}%>
							</td>
							
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
						작성자 : <%=session.getAttribute("member") %><br>
						<textarea id="recont" name="recont" class="form-control col-lg-12" style="width:100%" rows="5"></textarea>
						<table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list" class="btn btn-primary">목록</button>
                                        <button type="button" id="modify" class="btn btn-primary">수정</button>
                                        <%if(loginedUserId.equals(bbs.getUserId())){ %>
                                        <form action="/booking/tour/bbsDelete">
											<input type="hidden" name="delKey" value="<%=bbs.getBbsnum() %>"> 
                                        	<button type="button" id="delete" class="btn btn-primary">삭제</button>
                                        </form>
                                        <%} %>
                                        <button type="button" id="sendReply" class="btn btn-primary">글쓰기</button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
					<%
						}
					%>
					
					
                    
					</div>
            </div>
            <hr/>
            <script type="text/javascript">
						$("#sendReply").on("click",function(){
						let rUserID =  $("#rUserId").val();
						let rBbsNum = <%=bbs.getBbsnum()%>
						let rContent = $("#recont").val();
>>>>>>> Stashed changes
	
	
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

$('.deleteClass').click(function(){
	    var delReplyKey = $().attr("id");
	    alert("clicked");
	})

$

</script>

</body>
</html>