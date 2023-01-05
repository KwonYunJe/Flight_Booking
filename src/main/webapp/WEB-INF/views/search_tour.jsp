<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>With Us</title>

<!-- 방문자추이 차트 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>

<!-- COVID 누적수치 -->
<script type="text/javascript">
	$(function() {
		var count0 = ${covidList.get(1)} - 200;
		var count1 = ${covidList.get(2)} - 200;
		var	count2 = ${covidList.get(3)} - 200;

		timeCounter();

		function timeCounter() {

			id0 = setInterval(count0Fn, 0.1);
			//0.1 = 속도조절
			function count0Fn() {
				count0++;
				if (count0 > ${covidList.get(1)}) {
					clearInterval(id0);
				} else {
					$(".number").eq(0).text(count0);
				}

			}

			id1 = setInterval(count1Fn, 0.1);
			//0.1 = 속도조절
			function count1Fn() {
				count1++;
				if (count1 > ${covidList.get(2)}) {
					clearInterval(id1);
				} else {
					$(".number").eq(1).text(count1);
				}
			}

			id2 = setInterval(count2Fn, 0.1);
			//0.1 = 속도조절
			function count2Fn() {
				count2++;
				if (count2 > ${covidList.get(3)}) {
					clearInterval(id2);
				} else {
					$(".number").eq(2).text(count2);
				}
			}
		}
	});
</script>

<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/img/icon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/fly.css" rel="stylesheet">

<!-- CSS  -->
<style type="text/css">
.navbar a, .navbar a:focus {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 10px 20px;
	font-family: var(- -font-primary);
	font-size: 15px;
	text-transform: uppercase;
	font-weight: 400;
	color: rgba(255, 255, 255, 0.5);
	letter-spacing: 1px;
	white-space: nowrap;
	transition: 0.3s;
}

ul {
	width: 100%;
	color: #666;
	text-align: center;
	margin-top: 100px;
}

li {
	float: left;
	width: 30%;
	list-style: none;
	border-left: 2px solid #024DAF;
}

li:first-child {
	border-left: 0;
}

.regname {
	position: relative;
	top: 50px;
	text-align: center;
	background-color: #024DAF;
	color: white;
}

.utime {
	display: inline-block;
	color: #666;
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
				src="resources/img/logo.png" alt=""
				style="width: 150px; height: 50px;">
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="index.html">항공권</a></li>
					<li><a href="about.html" class="active">커뮤니티</a></li>
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
					<li><a href="services.html">게시판</a></li>
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
		<section id="services" class="page-header" style="margin-top: 10px;">
			<!-- 코로나 시작 -->
			<div class="regname">
				<h2>${covidList.get(0)}COVID-19발생현황</h2>
			</div>
			<div class="main">
				<ul>
					<li>
						<h2 class="number">${covidList.get(1)}</h2> <i>전체 확진자 수</i>
					</li>
					<li>
						<h2 class="number">${covidList.get(2)}</h2> <i>전일대비</i>
					</li>
					<li>
						<h2 class="number">${covidList.get(3)}</h2> <i>사망누적</i>
					</li>
				</ul>
			</div>
			<div class="utime">
				<br>
				<h4>${covidList.get(4)}</h4>
				<!-- 갱신기준날짜 -->
			</div>
			<!-- 코로나 끝 -->

			<!-- 방문자추이 그래프 시작 -->
			<canvas id="testChart" width="2000vw" height="700vh"></canvas>
			<script>
			var ctx = document.getElementById('testChart');
			var config = {
				type : 'line',
				data : {
					labels : [ ${monthList.get(0)}, ${monthList.get(1)}, ${monthList.get(2)}, ${monthList.get(3)}],
					datasets : [{
						data : [ ${total[0]}, ${total[1]}, ${total[2]}, ${total[3]}],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderWidth:2,
						pointRadius: 8,
						borderColor:"#024DAF"
					}]
				},
				options : {
					responsive : false,
					legend : {
						display: false,
					},
					title : {
						display : true,
						text : '월별 방문자 추이'
					},
					animation : {
						animateScale : true,
						animateRotate : true
					},
					scales: {
						yAxes: [{
							ticks: {
								min: 0,
								max: 5000000,
								stepSize: 1000000,
								fontSize : 14,
							}
						}]
					}
				}
			};
			var myDoughnutChart = new Chart(ctx, config);
		</script>
		<!-- 방문자추이 그래프 끝 -->
			<h3>안녕하세요</h3>

		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">&copy; Made by SCH, KSJ, GYZ, GYM</div>
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
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/vendor/aos/aos.js"></script>
	<script src="resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/js/main.js"></script>
</body>
</html>