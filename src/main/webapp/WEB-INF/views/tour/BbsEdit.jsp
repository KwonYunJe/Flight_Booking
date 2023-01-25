<%@page import="com.flight.booking.tour.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%BbsVO bbs = (BbsVO) request.getAttribute("one"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>With Us</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<meta content="" name="description">
<meta content="" name="keywords">

<!-- BbsInsert 달력 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  
<!-- Favicons -->
<link href="../resources/img/icon.png" rel="icon">
<link href="../resources/img/apple-touch-icon.png" rel="apple-touch-icon">

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

@media (max-width: 575px) {
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
    background: var(--color-secondary);
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

.header-user .dropdown ul a:hover,
.header-user .dropdown ul .active:hover,
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

@media (min-width: 1280px) and (max-width: 1366px) {
.header-user .dropdown .dropdown ul {
    left: -90%;
  }

.header-user .dropdown .dropdown:hover>ul {
    left: -100%;
  }
}

.regname {
	display: inline-block;
	width: 100%;
	padding-top: 10px;
	position: relative;
	text-align: center;
	background-color: #024DAF;
	color: white;
}

</style>
</head>

<body>
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
					<li><a href="bbsList?pageNum=1&amount=10" class="active">게시판</a></li>
				</ul>
			</nav>
			<!-- .navbar -->

			<%
		if (session.getAttribute("member") == null) {
		%>
			<div class="header-user">
				<li><a href="login.jsp" >로그인</a></li>
			</div>
			
		<%
		} else {
		%>
			<div class="header-user">
				<li class="dropdown"><a href="#"><span><%= session.getAttribute("member")%>님 안녕하세요!</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="gallery.html">프로필</a></li>
							<form id="logout" action="logout" method="post">
								<li><a href="#" onclick="return chk_form()">로그아웃</a></li>
							</form>
						</ul>
				</li>
				
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
			<!-- 코로나 시작 -->

			<div class="container">
				<!-- <form action="bbsInsert">
					title: <input type="text" name="title"><br> 
					contents: <input type="text" name="bbscont"><br> 
					area: <input type="text" name="area"><br>
					<input type="submit" href="bbsList?pageNum=1&amount=10" value="입력하기"/>
					</form> -->
					
				<div class="regname">
						<h2>동행을 구하시나요?</h2>
				</div>       
				<form action="bbsUpdate">
  				<table class="table table-hover">
    				<tbody>	
      				<tr>
      					<td><select name="area" class="select form-control" style="color: gray; width:60px; text-align: center;">
      							<option value="none" hidden>지역</option>
	  							<option <%if(String.valueOf(bbs.getArea()).equals("서울")){ %> selected <%} %>>서울</option>
	 							<option <%if(String.valueOf(bbs.getArea()).equals("부산")){ %> selected <%} %>>부산</option>
	  							<option <%if(String.valueOf(bbs.getArea()).equals("울산")){ %> selected <%} %>>울산</option>
	  							<option <%if(String.valueOf(bbs.getArea()).equals("대구")){ %> selected <%} %>>대구</option>
	  							<option <%if(String.valueOf(bbs.getArea()).equals("인천")){ %> selected <%} %>>인천</option>
	  							
							</select>
						</td>
						<td>
							<input type="text" name="title" class="form-control" id="datepicker" style="width:160px; text-align: center;" placeholder="날짜 선택">
						</td>
      					<td><input type="text" name="title" class="form-control" style="width:1028px;" placeholder="글 제목" maxlength="40" value="<%=bbs.getTitle()%>"></td>
						
      				</tr>
      				<tr>
      					<td colspan="3"><textarea type="text" class="form-control" placeholder="글 내용을 작성하세요" name="bbscont" maxlength="1024" style="height: 600px; "><%=bbs.getbbscont() %></textarea></td>
     				</tr>
    				</tbody>
  				</table>
  					<input type="hidden" name="bbsnum" value="<%=bbs.getBbsnum()%>">
  					<input type="hidden" name= "userid" value = "<%=bbs.getUserId() %>">
  					<input type="submit" href="bbsList?pageNum=1&amount=10" class="btn btn-primary float-end" value="글쓰기">
  				</form>
			</div>
				
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
	
	<!-- 로그아웃 정보 전송 -->
	<script type="text/javascript">
		function chk_form() {
			document.getElementById('logout').submit();
		}
	</script>
	
	<!-- BbsInsert 달력 -->
	<script>
  		$( function() {
  			$( "#datepicker" ).datepicker({
  		    	 dateFormat: 'yy년 mm월 dd일',
  			});
  		});
  		
  		$.datepicker.setDefaults({
  		    prevText: '이전 달',
  		    nextText: '다음 달',
  		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //월 이름
  		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //
  		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
  		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
  		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
  		    showMonthAfterYear: true,
  		    yearSuffix: '년'
  		});  
  	</script>
</body>
</html>
	