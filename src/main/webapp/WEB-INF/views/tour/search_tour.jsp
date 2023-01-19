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
	transition: 0.3s;
}

.covid_main {
	transform: translate(0px, -10px);
	width: 100%;
}

.vichart {
	transform: translate(0px, 30px);
	height: 350px;
	width: 50%;
	display: flex;
	padding: 5px 10px;
	align-items: center;
	border-radius: 20px;
	border: 1px solid #E2E2E2;
}

#visiChart {
	width: 100%;
	height: 90%;
}

.covid_total {
	width: 100%;
	color: #666;
	text-align: center;
	font-size: 20px;
	margin-top: 10px;
}

.covid_li {
	float: left;
	width: 33%;
	height: 200px;
	list-style: none;
	border-left: 2px solid #024DAF;
}

.number {
	height: 75px;
	margin-top: 70px;
	color: #666;
	font-size: 40px;
}

.covid_li:first-child {
	border-left: 0;
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

.utime {
	display: inline-block;
	color: #666;
}

.utime h5{
	font-size: 18px;
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
					<li><a href="search_flight.jsp">항공권</a></li>
					<li><a href="tour_main.jsp" class="active">커뮤니티</a></li>
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

			<div class="container">
				<div class="covid_main">
					<div class="regname">
						<h2>${covidList.get(0)} COVID-19 발생현황</h2>
					</div>
					<ul class="covid_total">
						<li class="covid_li">
							<h1 class="number">${covidList.get(1)}</h1> <i>전체 확진자 수</i>
						</li>
						<li class="covid_li">
							<h1 class="number">${covidList.get(2)}</h1> <i>전일대비</i>
						</li>
						<li class="covid_li">
							<h1 class="number">${covidList.get(3)}</h1> <i>사망누적</i>
						</li>
					</ul>
					<div class="utime">
						<br>
						<!-- 갱신기준날짜 -->
						<h5>${covidList.get(4)}</h5>
					</div>
				</div>
			<!-- 코로나 끝 -->

			<!-- 방문자추이 그래프 시작 -->
			<div class="vichart">
				<canvas id="visiChart"></canvas>
			</div>
			<script>
			var ctx = document.getElementById('visiChart');
			var config = {
				type : 'line',
				data : {
					labels : [ ${monthList.get(0)} , ${monthList.get(1)}, ${monthList.get(2)}, ${monthList.get(3)}],
					datasets : [{
						data : [ ${total[0]}, ${total[1]}, ${total[2]}, ${total[3]}],
						backgroundColor : "rgba(54, 162, 235, 0.2)",
						borderWidth:2,
						pointRadius: 8,
						borderColor:"#024DAF"
					}]
				},
				options : {
					responsive : true,
					legend : {
						display: false,
					},
					title : {
						display : true,
						text : '월별 방문자 추이',
						fontSize : 15
					},
					animation : {
						animateScale : true,
						animateRotate : true
					},
					scales: {
						yAxes: [{
							ticks: {
								min: 0,
								max:${total[0]}+10000000,
								stepSize: 5000000,
								fontSize : 15,
							}
						}],
						xAxes : [ {
							ticks : {
								fontSize : 15,
							}
						}]
					}
				}
			};
			var myDoughnutChart = new Chart(ctx, config);
		</script>
			<!-- 방문자추이 그래프 끝 -->
		</div>
		</section>
		<section id="recentBBS">
		<h1>최신 게시글</h1><form action="bbsList" method="get"><button type="submit">전체글 보기</button> </form>
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
			<script type="text/javascript">
			$(document).ready(function(){
				$.ajax({
					  url : "bbsAll",
					  type : "post",
					  data : {
						  area : '<%=request.getAttribute("region")%>'
					  },
					  
					  success : function(data) {
						  if(data.length == 0){
							  $("#recentBBS").html('<div style="text-align : center;">해당 지역에 작성된 게시글이 존재하지 않습니다.</div>')
						  }
						  for(var i = 0 ;i < data.length ; i++){
							  $("#bbstitle1").html(data[i].title);
							  console.log(data[i].userId);
							  console.log(data[i].title);
							  console.log(data[i].bbscont);
							  console.log(data[i].area);
							  console.log(data[i].bbstime);
							  
							  $("#bbstitle" + i).html(data[i].title);
							  $("#userid" + i).html(data[i].userId);
							  $("#bbscont" + i).html(data[i].bbscont);
							  $("#bbsarea" + i).html(data[i].area);
							  $("#bbstime" + i).html(data[i].bbstime);
						  };
						  
						  
						  /* $("#bbstitle1").html(data[0].title);
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
						  $("#bbstime5").html(data[4].bbstime); */
					  },
					  error : function() {
					  	alert("error");
					  }
					})
		    });
			
			</script>
			
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
</body>
</html>