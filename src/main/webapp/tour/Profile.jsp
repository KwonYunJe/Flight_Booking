<%@page import="com.flight.booking.tour.ReplyVO"%>
<%@page import="com.flight.booking.tour.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="com.flight.booking.tour.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var user = '<%=String.valueOf(session.getAttribute("userid"))%>'
						$.ajax({
							url : "selectUserId",
							type : "post",
							data : {
								userid : user
							},
							success : function(reciveData) {
								$("#showID").html(reciveData.userid);
								$("#showName").html(reciveData.name);
								$("#showNick").html(reciveData.nickname);
								$("#showGen").html(reciveData.gender);
								$("#showPhone").html(reciveData.tel);
							},
							error : function(e) {
								alert("error");
								console.log(e);
							}
						})
						$
								.ajax({
									url : "userBbs",
									type : "post",
									data : {
										userid : user
									},
									success : function(reciveBBS) {
										$("#showArea")
												.append(
														'<div id="userBBSArea"><table border="1" style="text-align: center"  id="userBBS"><tr style="font-weight: BOLD;"><td>제목</td><td>지역</td><td>작성시간</td></tr></table></div>');
										for (var i = 0; i < reciveBBS.length; i++) {
											$("#userBBS")
													.append(
															'<tr><td><a href="/booking/tour/bbsOne?oneKey='
																	+ reciveBBS[i].bbsnum
																	+ '">'
																	+ reciveBBS[i].title
																	+ '</a></td>'
																	+ '<td>'
																	+ reciveBBS[i].area
																	+ '</td>'
																	+ '<td>'
																	+ reciveBBS[i].bbstime
																	+ '</td></tr>')
										}
									}
								})

					})
</script>
<title>With Us</title>

<meta content="" name="description">
<meta content="" name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<!-- Favicons -->
<link href="../resources/img/icon.png" rel="icon">
<link href="../resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="../resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">


<!-- Template Main CSS File -->
<link href="../resources/css/fly.css" rel="stylesheet">

<!-- CSS  -->
<style type="text/css">
.navbar a, .navbar a:focus {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 10px 20px;
	font-family: var(- -font-primary);
	font-size: 18px;
	text-transform: uppercase;
	font-weight: 400;
	color: rgba(255, 255, 255, 0.5);
	letter-spacing: 1px;
	white-space: nowrap;
}

.header .header-user {
	padding-right: 30px;
	list-style-type: none;
}

.header .header-user a {
	color: white;
	padding-left: 15px;
	display: inline-block;
	line-height: 0px;
	transition: 0.3s;
	font-size: 18px;
}

.header .header-user a:hover {
	color: rgba(255, 255, 255, 0.5);
}

@media ( max-width : 575px) {
	.header .header-user a {
		padding-left: 5px;
	}
}

.header-user .dropdown ul {
	display: block;
	position: absolute;
	list-style-type: none;
	left: 14px;
	top: calc(100% + 30px);
	margin: 0;
	padding: 10px 0;
	z-index: 99;
	opacity: 0;
	visibility: hidden;
	background: var(- -color-secondary);
	transition: 0.3s;
	border-radius: 4px;
	background-color: #F2F2F2;
}

.header-user .dropdown ul li {
	min-width: 150px;
	background-color: #F2F2F2;
}

.header-user .dropdown ul a {
	padding: 10px 20px;
	font-size: 15px;
	text-transform: none;
	font-weight: 400;
	color: #585858;
	background-color: #F2F2F2;
}

.header-user .dropdown ul a i {
	font-size: 12px;
}

.header-user .dropdown ul a:hover, .header-user .dropdown ul .active:hover,
	.header-user .dropdown ul li:hover>a {
	color: #2D8CFF;
}

.header-user .dropdown:hover>ul {
	opacity: 1;
	top: 100%;
	visibility: visible;
}

.header-user .dropdown .dropdown ul {
	top: 0;
	left: calc(100% - 30px);
	visibility: hidden;
}

.header-user .dropdown .dropdown:hover>ul {
	opacity: 1;
	top: 0;
	left: 100%;
	visibility: visible;
}

}
@media ( min-width : 1280px) and (max-width: 1366px) {
	.header-user .dropdown .dropdown ul {
		left: -90%;
	}
	.header-user .dropdown .dropdown:hover>ul {
		left: -100%;
	}
}
</style>
</head>

<body>
<%
	if(String.valueOf(session.getAttribute("userid")).equals("null")){
%>
		로그인이 필요합니다!
		<br>
		<a href="http://localhost:8080/booking/tour/login.jsp">로그인하러 가기</a>
<%
	}

	else{
%>
	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top"
		style="height: 100px;">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<a href="index.html"
				class="d-flex align-items-center  me-auto me-lg-0"
				style="transform: translate(10px, 0px);"> <img
				src="../resources/img/logo.png" alt=""
				style="width: 150px; height: 50px;">
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="../air/search_flight.jsp">항공권</a></li>
					<li><a href="tour_main.jsp">커뮤니티</a></li>
					<li class="dropdown"><a href="#"><span>관광지갤러리</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="gallery.html">서울특별시</a></li>
							<li><a href="gallery.html">부산광역시</a></li>
							<li><a href="gallery.html">대구광역시</a></li>
							<li><a href="gallery.html">인천광역시</a></li>
							<li><a href="gallery.html">광주광역시</a></li>
							<li><a href="gallery.html">대전광역시</a></li>
							<li class="dropdown"><a href="#"><span>경상도</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">경상남도</a></li>
									<li><a href="#">경상북도</a></li>
								</ul></li>
						</ul></li>
					<li><a href="bbsList?pageNum=1&amount=10" >게시판</a></li>
				</ul>
			</nav>
			<!-- .navbar -->

			<%
				if (session.getAttribute("member") == null) {
			%>
			<div class="header-user">
				<li><a href="login.jsp">로그인</a></li>
			</div>

			<%
				} else {
			%>
			<div class="header-user">
				<li class="dropdown"><a href="#"><span><%=session.getAttribute("member")%>님
							안녕하세요!</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
					<ul>
						<li><a href="gallery.html">프로필</a></li>
						<form id="logout" action="logout" method="post">
							<li><a href="#" onclick="return chk_form()">로그아웃</a></li>
						</form>
					</ul></li>

			</div>



			<%
				}
			%>
			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

		</div>
	</header>
	<!-- End Header -->


	<main id="main" data-aos="fade" data-aos-delay="1500">
		<section id="services" class="page-header" style="margin-top: 10px;">
			<!-- Profile 시작 -->
			<div id="usrInfoArea">
				<table style="text-align: center" border="1">
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
						<td colspan="2">
							<button>개인정보 수정</button>
						</td>
					</tr>
				</table>
			</div>
			<table>
			
			</table>

			<button id="requestBBS">내가 쓴 게시글</button>
			<script type="text/javascript">
$("#requestBBS").on("click",function(){
	var user = '<%=String.valueOf(session.getAttribute("userid"))%>'
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
	var user = '<%=String.valueOf(session.getAttribute("userid"))%>'
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
			<div id="buyTicket">
				<input type="hidden" id="useridForTicket" value="<%=String.valueOf(session.getAttribute("userid"))%>">
				<button type="button" id="submitTicket">티켓구매 완료</button>
			</div>
			<script type="text/javascript">
				$("#submitTicket").on("click", function(){
					let frontUserid = $("#useridForTicket").val();
					console.log(frontUserid);
					
					$.ajax({
						url : "buying",
						type : "post",
						data : {
							userid : frontUserid
						},
						dataType : 'json',
						success : function(buyingResult){
							console.log("buyingResult : " + buyingResult);
							if(buyingResult == "1"){
								alert("티켓구매가 완료되었습니다. 게시판 이용이 가능합니다.");
							}else{
								alert("티켓구매가 정상적으로 완료되지 않았습니다.");
							}
						},
						error : function(buyingError){
							alert("에러가 발생하였습니다. 에러 내용 : " + buyingError);
							console.log(buyingError)
						}
					})
				})
			</script>
			<div id="showArea"></div>

		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">&copy; Made by SCH, KSJ, KYJ, KYM</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<div id="preloader">
		<div class="line"></div>
	</div>

	<!-- Vendor JS Files -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>
<%} %>
</body>
</html>