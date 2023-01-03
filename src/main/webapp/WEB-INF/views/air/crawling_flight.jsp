<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.flight.booking.air.FlightVO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>PhotoFolio Bootstrap Template - Services</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../resources/img/favicon.png" rel="icon">
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
<link href="../resources/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../resources/css/main.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: PhotoFolio - v1.2.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<a href="index.html"
				class="logo d-flex align-items-center  me-auto me-lg-0"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="assets/img/logo.png" alt=""> --> <i
				class="bi bi-camera"></i>
				<h1>PhotoFolio</h1>
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li class="dropdown"><a href="#"><span>Gallery</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="gallery.html">Nature</a></li>
							<li><a href="gallery.html">People</a></li>
							<li><a href="gallery.html">Architecture</a></li>
							<li><a href="gallery.html">Animals</a></li>
							<li><a href="gallery.html">Sports</a></li>
							<li><a href="gallery.html">Travel</a></li>
							<li class="dropdown"><a href="#"><span>Sub Menu</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">Sub Menu 1</a></li>
									<li><a href="#">Sub Menu 2</a></li>
									<li><a href="#">Sub Menu 3</a></li>
								</ul></li>
						</ul></li>
					<li><a href="services.html" class="active">Services</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>
			<!-- .navbar -->

			<div class="header-social-links">
				<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
					href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
					href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a
					href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
			</div>
			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

		</div>
	</header>
	<!-- End Header -->

	<main id="main" data-aos="fade" data-aos-delay="1500">
		<!-- ======= Services Section ======= -->
		<section id="services" class="page-header" style="margin-top: 10px;">
			<div class="container">
				<!-- 항공권 검색 내용 (출발지, 도착지, 인원, 여행일정) -->
				<div>
					<%
					// controller에서 만든 model 가져오기
					ArrayList<String> airline = (ArrayList) request.getAttribute("airline");
					ArrayList<String> price = (ArrayList) request.getAttribute("price");
					ArrayList<String> tourCom = (ArrayList) request.getAttribute("tour");
					ArrayList<String> depTime = (ArrayList) request.getAttribute("depTime");
					ArrayList<String> desTime = (ArrayList) request.getAttribute("desTime");
					ArrayList<FlightVO> list = (ArrayList) request.getAttribute("list");

					// 사용자가 입력한 값
					String dep = list.get(0).getDeparture(); // 출발지
					String arr = list.get(0).getArrival(); // 도착지	
					String date = list.get(0).getAirdate(); // 날짜
					String adult = list.get(0).getAdult(); // 성인
					String child = list.get(0).getChild(); // 소아
					String baby = list.get(0).getBaby(); // 유아

					// 출발지, 도착지 value값 문자열 자르기 (ex 부산_PUS -> PUS)
					String target = "_"; // 기준 문자열 : _
					int target_dep = dep.indexOf(target) + 1; // 출발지 문자열에서 문자 "_"의 index + 1
					int target_arr = arr.indexOf(target) + 1; // 도착지 문자열에서 문자 "_"의 index + 1
					String depart = dep.substring(target_dep); // 출발지 문자열에서 문자 "_"까지 삭제("_" 뒷 부분만 남김)
					String arrival = arr.substring(target_arr); // 도착지 문자열에서 문자 "_"까지 삭제("_" 뒷 부분만 남김)
//					System.out.println(depart + " " + arrival);
//					System.out.println(dep + " " + arr + " " + date);

					//     dep, arr		 : 부산_PUS 형식
					// depart, arrival   : PUS 형식
					
					// 날짜 bar 없애기 (22-12-30 -> 221230)
					String nobarDate = date.replace("-", "");
					%>
					
					<div style="text-align: center;">
						<h3><%=dep%>  ▷    <%=arr%></h3>
						<br>
						<div class="row">
							<div class="col">
								<h5>
								성인 <%=adult%>
								소아 <%=child%>
								유아 <%=baby%>
								</h5>
							</div>
							<div class="col">
								<h5><%=date%></h5>
							</div>
						</div>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="row">
					<!-- 필터 (왼쪽 div) -->
					<div class="col-sm-4">
						<a class="cta-btn">가격 변동 추이</a> <br> <br>
						<h5>출발시간</h5>
						<input type="text" class="form-control"> <br>
						<h5>총 소요시간</h5>
						<input type="text" class="form-control"> <br>
						<h5>항공사</h5>
						<div class="form-group">
						<select class="form-control">
							<option>대한항공</option>
							<option>에어부산</option>
							<option>아시아나</option>
							<option>제주항공</option>
						</select>
						</div>
						<br>
					</div>
					
					<!-- 오른쪽 div -->
					<div class="col-sm-8">
						<div class="row">
							<!-- 최저가 띄우기 -->
 							<div class="col">
 								<h4>최저가</h4>
 								<% String lowPrice = price.get(0); %>
								<h4>￦ <%=lowPrice %></h4>
 							</div>
 							<div class="col"></div>
 							<!-- 정렬 부분 -->
 							<div class="col" style="float: right; width: 100px;">
 								<div class="form-group">
 								 <label for="pwd">정렬 기준</label>
 								<select class="form-control">
 									<option>최저가순</option>
 									<option>출발시간순</option>
 									<option>최단여행순</option>
 								</select>
 								</div>
 							</div>
						</div>
						<br>
						
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < 10; i++) {
							String airs = airline.get(i);
							String pri = price.get(i);
							String tour = tourCom.get(i);
							String depT = depTime.get(i);
							String desT = desTime.get(i);
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airs%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=desT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<%=pri%></h5>
										<%
										if (tour.equals("노랑풍선")) {	// 판매사가 노랑풍선일 경우
										%>
										<!-- 예약 버튼 클릭 시 항공권 예약 사이트로 이동  -->
										<a class="cta-btn"
											href="https://ota.ybtour.co.kr/flight-search-result-go?tripTypeCode=OW&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&laborCount=0&studentCount=0&cabinClassCode=Y&deviceTypeCode=PC&itineraries%5B0%5D%5BoriginCityCodeIata%5D=<%=depart%>&itineraries%5B0%5D%5BdestinationCityCodeIata%5D=<%=arrival%>&itineraries%5B0%5D%5BdepartureDate%5D=<%=date%>&dynamicSearchYn=false&limits%5B0%5D=0&limits%5B1%5D=10">예약</a>
										<%
										} else if (tour.equals("웹투어")) {	// 판매사가 웹투어일 경우
											if (depart.equals("SEL")) {
												depart = "GMP";
											}
											if (arrival.equals("SEL")) {
												arrival = "GMP";
											}
										%>
										<a class="cta-btn"
											href="https://www2.webtour.com/da/da_list.asp?wItinerary=oneway&wItinerary_cnt=3&wDepCity=<%=depart%>&wArrCity=<%=arrival%>&wDepDate=<%=date%>&wArrDate=<%=date%>&wCarCode=KE%2COZ%2CLJ%2C7C%2CZE%2CTW%2CBX%2CRS%2C4H%2C4V%2CRF&wACnt=<%=adult%>&wCCnt=<%=child%>&wICnt=<%=baby%>&wSeatClass=All&wSeatClass_cnt=3&wSeatClass_1_txt=%C0%FC%C3%BC&wSeatClass_2_txt=%C0%CF%B9%DD%BC%AE%2F%C7%D2%C0%CE%BC%AE&wSeatClass_3_txt=%BA%F1%C1%EE%B4%CF%BD%BA%BC%AE">예약</a>
										<%
										} else if (tour.equals("인터파크")) {
											if (depart.equals("SEL")) {
												depart = "GMP";
											}
											if (arrival.equals("SEL")) {
												arrival = "GMP";
											}
										%>
										<a class="cta-btn"
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickMainFltNo=&pickSDate=">예약</a>
										<%
										} else if (tour.equals("제주도닷컴")) {
										%>
										<a class="cta-btn"
											href="https://jejudo.com/air/list/search?City_Dep=<%=depart%>&City_Arr=<%=arrival%>&DateDep=<%=date%>&DateArr=<%=date%>&ACnt=<%=adult%>&CCnt=<%=child%>&ICnt=<%=baby%>&itinerary=OneWay">예약</a>
										<%
										} else if (tour.equals("하나투어")) {
										%>
										<a class="cta-btn"
											href="https://wtdom2.hanatour.com/00001/DA/da_list.asp?wDepDate=<%=nobarDate%>&wDepCity=<%=depart%>&wArrCity=<%=arrival%>&wACnt=<%=adult%>&wCCnt=<%=child%>&wICnt=<%=baby%>&wItinerary=oneway&wSeatClass=ALL&">예약</a>
										<%
										} else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>
									</div>
									<br>
								</div>
							</div>
						</div>
						<br>
						<%
						}
						%>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>PhotoFolio</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
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
	<script src="../resources/vendor/aos/aos.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>

</body>
</html>