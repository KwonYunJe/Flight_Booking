<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style type="text/css">
.recentBbs {
      width:100px;
      overflow:hidden;
      text-overflow:ellipsis;
      white-space:nowrap;
      display:inline-block;
  }
</style>

</head>
<body>
	<%
		if (session.getAttribute("member") == null) {
	%>
		<a href="login.jsp">로그인</a>
	<%
		} else {
	%>
	<a href="BbsInsert.jsp">게시글 작성</a>
	<form action="logout" method="post">
		<button type="submit">로그아웃</button>
	</form>
	<%
		}
	%>
	
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
	
	<h1>최신 게시글</h1>
	<ol>
		<li>
			<a id="bbstitle1" class="recentBbs"></a>
			<a id="userid1" class="recentBbs"></a>
			<a id = "bbsarea1" class="recentBbs"></a>
		</li>
		<li>
			<a id="bbstitle2" class="recentBbs"></a>
			<a id="userid2" class="recentBbs"></a>
			<a id = "bbsarea2" class="recentBbs"></a>
		</li>
		<li>
			<a id="bbstitle3" class="recentBbs"></a>
			<a id="userid3" class="recentBbs"></a>
			<a id = "bbsarea3" class="recentBbs"></a>
		</li>
		<li>
			<a id="bbstitle4" class="recentBbs"></a>
			<a id="userid4" class="recentBbs"></a>
			<a id = "bbsarea4" class="recentBbs"></a>
		</li>
		<li>
			<a id="bbstitle5" class="recentBbs"></a>
			<a id="userid5" class="recentBbs"></a>
			<a id = "bbsarea5" class="recentBbs"></a>
		</li>
	</ol>

	

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	$.ajax({
		  url : "bbsAll",
		  type : "post",
		  
		  success : function(data) {
			  for(var i = 0 ;i < 5; i++){
				  $("#bbstitle1").html(data[i].title);
				  console.log(data[i].userId);
				  console.log(data[i].title);
				  console.log(data[i].bbscont);
				  console.log(data[i].area);
				  console.log(data[i].bbstime);
			  };
			  $("#bbstitle1").html(data[0].title);
			  $("#userid1").html(data[0].userId);
			  $("#bbscont1").html(data[0].bbscont);
			  $("#bbsarea1").html(data[0].area);
			  $("#bbstime1").html(data[0].bbstime);
			  
			  $("#bbstitle2").html(data[1].title);
			  $("#userid2").html(data[1].userId);
			  $("#bbscont2").html(data[1].bbscont);
			  $("#bbsarea2").html(data[1].area);
			  $("#bbstime2").html(data[1].bbstime);
			  
			  $("#bbstitle3").html(data[2].title);
			  $("#userid3").html(data[2].userId);
			  $("#bbscont3").html(data[2].bbscont);
			  $("#bbsarea3").html(data[2].area);
			  $("#bbstime3").html(data[2].bbstime);
			  
			  $("#bbstitle4").html(data[3].title);
			  $("#userid4").html(data[3].userId);
			  $("#bbscont4").html(data[3].bbscont);
			  $("#bbsarea4").html(data[3].area);
			  $("#bbstime4").html(data[3].bbstime);
			  
			  $("#bbstitle5").html(data[4].title);
			  $("#userid5").html(data[4].userId);
			  $("#bbscont5").html(data[4].bbscont);
			  $("#bbsarea5").html(data[4].area);
			  $("#bbstime5").html(data[4].bbstime);
		  },
		  error : function() {
		  	alert("error");
		  }
		})
	</script>
</body>
</html>