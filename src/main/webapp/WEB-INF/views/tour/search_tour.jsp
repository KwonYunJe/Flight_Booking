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
.covid_main {
	transform: translate(0px, 10px);
	padding: 45px 10px;
	width: 50%;
	height: 350px;
	border-radius: 20px;
	border: 1px solid #E2E2E2;
}

.vichart {
	display: flex;
	transform: translate(650px, -340px);
	height: 350px;
	width: 50%;
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
	font-size: 35px;
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
	transform: translate(210px, 0px);
	display: flex;
	color: #666;
}

.utime h5{
	font-size: 18px;
}

.bbslsit{
	display: inline-block;
	width: 100%;
}

.col-sm-8{
	transform: translate(0px, -300px);
	width:100%;
	

}
</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top"
		style="height: 100px;">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<a href="search_flight.jsp"
				class="d-flex align-items-center  me-auto me-lg-0"
				style="transform: translate(10px, 0px);"> <img
				src="../resources/img/logo.png" alt=""
				style="width: 150px; height: 50px;">
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="../air/search_flight.jsp">항공권</a></li>
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
					<li><a href="bbsList?pageNum=1&amount=10">동행찾기</a></li>
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
							<li><a href="Profile.jsp">프로필</a></li>
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
			
			<div class="container">
				<div class="regname">
					<h2>최근 ${covidList.get(0)} 여행에서 동행을 구하는 사람들이에요!</h2>
				</div>
				
		<!-- 검색한 지역의 최신 개시물 5개 출력 -->
		<div class="bbslsit">
		<table class="table table-striped">
		
		<thead>
					<tr>						
						<th>번호</th>
						<th>내용</th>
						<th>닉네임</th>
						<th>지역</th>
					</tr>
					</thead>
					<tbody>
					
					<tr>
						<td>1</td>
						<td id="bbstitle0" class="recentBbs"></td>
						<td id="userid0" class="recentBbs"></td>
						<td id = "bbsarea0" class="recentBbs"></td>
					</tr>
					<tr>
						<td>2</td>
						<td id="bbstitle1" class="recentBbs"></td>
						<td id="userid1" class="recentBbs"></td>
						<td id = "bbsarea1" class="recentBbs"></td>
					</tr>
					<tr>
						<td>3</td>
						<td id="bbstitle2" class="recentBbs"></td>
						<td id="userid2" class="recentBbs"></td>
						<td id = "bbsarea2" class="recentBbs"></td>
					</tr>
					<tr>
						<td>4</td>
						<td id="bbstitle3" class="recentBbs"></td>
						<td id="userid3" class="recentBbs"></td>
						<td id = "bbsarea3" class="recentBbs"></td>
					</tr>
					<tr>
						<td>5</td>
						<td id="bbstitle4" class="recentBbs"></td>
						<td id="userid4" class="recentBbs"></td>
						<td id = "bbsarea4" class="recentBbs"></td>
					</tr>
					
					</tbody>
		</table>
		<span style="float:right";>
			<form action="bbsList" method="get"><button type="submit" class="btn btn-primary">더 살펴보고 싶으신가요?</button> </form>
		</span>
		</div>
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
							  /* $("#bbstitle1").html(data[i].title); */
							  
							  
							  $("#bbstitle" + i).html(data[i].title);
							  $("#userid" + i).html(data[i].userId);
							  $("#bbscont" + i).html(data[i].bbscont);
							  $("#bbsarea" + i).html(data[i].area);
							  $("#bbstime" + i).html(data[i].bbstime);
						  };
						 
					  },
					  error : function() {
					  	alert("error");
					  }
					})
		    });
			
			</script>
				
				<!-- 코로나 시작 -->
				<div class="covid_main">
					<div class="utime">
						<!-- 갱신기준날짜 -->
						<h5>${covidList.get(0)} ${covidList.get(4)}</h5>
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
		
		<!-- 관광지 앨범 -->
		<div class="region_img">
    		<div class="row">
				<br><div class="col-sm-8" >
				<div class="slides-3 swiper">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="나홀로나무" src="../resources/img/나홀로나무.jpg" width="500px" height="300px">
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="한담해안산책로" src="../resources/img/한담해안산책로.jpg" width="500px" height="300px">
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="새별오름"  src="../resources/img/새별오름.jpg" width="500px" height="300px">
                
              </div>
            </div><!-- End testimonial item -->

			<div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="해운대 블루라인파크"  src="../resources/img/블루라인파크.bmp" width="500px" height="300px">
                
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="감천문화마을"  src="../resources/img/감천문화마을.jpg" width="500px" height="300px">
                
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="황령산 전망대"  src="../resources/img/황령산전망대.jpg" width="500px" height="300px">
                
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="서울숲"  src="../resources/img/서울숲.bmp" width="500px" height="300px">
                
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="한강시민공원"  src="../resources/img/한강시민공원.jpg" width="500px" height="300px">
     
              </div>
            </div><!-- End testimonial item -->

			<div class="swiper-slide">
              <div class="testimonial-item">
                
                <img alt="덕수궁돌담길"  src="../resources/img/덕수궁돌담길.jpg" width="500px" height="300px">
               
                
              </div>
            </div><!-- End testimonial item -->
          </div>
          <div class="swiper-pagination"></div>
        </div>
		</div>
		    	
    		</div>
    	</div>
		
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
</body>
</html>