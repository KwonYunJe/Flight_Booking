<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>With Us</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
}

.img-fluid {
	width: 100%;
	height: 100%;
}

.hero {
  min-height: 45vh;
  
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
					<li><a href="../air/search_flight.jsp" >항공권</a></li>
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
					<li><a href="bbsList?pageNum=1&amount=10">게시판</a></li>
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

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="hero d-flex flex-column justify-content-center align-items-center"
		data-aos="fade" data-aos-delay="1500">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<h2>지역정보 커뮤니티</h2>
					<p>동행을 구하거나 여행지의 정보를 찾을 수 있어요!</p>
				</div>
				<form action="search_tour">
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<input type="text" id="regionser" name="region" class="flight-input" placeholder="지역을 입력해 주세요">

						</div>
					</div>
					<br>
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<button type="submit" id="search" class="fly_btn" style="width:250px;">지역정보 검색</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- End Hero Section -->

	<main id="main" data-aos="fade" data-aos-delay="1500">

		<!-- ======= Gallery Section ======= -->
		<section id="gallery" class="gallery">
			<div class="container-fluid">

				<div class="row gy-4 justify-content-center">
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/gangwon-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/gangwon-1.jpg"
									title="강원도 - 무릉별유천지" class="glightbox preview-link"> <i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/gangwon-2.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/gangwon-2.jpg"
									title="강원도 - 간현관광지" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/gangwon-3.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/gangwon-3.jpg"
									title="강원도 - 올림픽경기장" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/busan-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/busan-1.jpg"
									title="부산 - 국제 록 페스티벌" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/busan-2.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/busan-2.jpg"
									title="부산 - 황령산 전망대" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/busan-3.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/busan-3.jpg"
									title="부산 - 부산국제연극제" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daejeon-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daejeon-1.jpg"
									title="대전 - 유회당사당" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daejeon-2.jpeg"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daejeon-2-1.jpg"
									title="대전 - 한빛 야시장" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daejeon-3.png" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daejeon-3-1.jpg"
									title="대전 - 유성 JAZZ & BEER FESTA"
									class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/incheon-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/incheon-1-1.jpg"
									title="인천 - 강화도 왕방마을 얼음축제" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/incheon-2.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/incheon-2.jpg"
									title="인천 - 강화 전등사" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/incheon-3.jpeg"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/incheon-3-1.jpg"
									title="인천 - 강화 양오 빙어낚시" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daegu-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daegu-1-1.jpg"
									title="대구 - 이월드 호러 어드벤처"
									class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daegu-2.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daegu-2.jpg" title="대구 - 영남제일관"
									class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/daegu-3.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/daegu-3.jpg"
									title="대구 - 네이처파크 스윗윈터페스티벌"
									class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-3 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img src="../resources/img/tour_img/ulsan-1.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="../resources/img/tour_img/ulsan-1.jpg" title="울산 - 마근저수지"
									class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="gallery-single.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->

				</div>

			</div>
		</section>
		<!-- End Gallery Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">
				<div class="copyright">&copy; Made by SCH, KSJ, KYJ, KYM</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>



	<!-- Vendor JS Files -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>
	
	<!-- 지역검색 예외처리 -->
	<script type="text/javascript">
	const region = document.getElementById("regionser");
	const searchBtn = document.getElementById("search");
	
	function searchRegion(e){
		try {
			switch (region.value) {
			case "울산":
				console.log(region.value);
				break;
			case "부산":
				console.log(region.value);
				break;
			case "대구":
				console.log(region.value);
				break;
			case "서울":
				console.log(region.value);
				break;
			case "인천":
				console.log(region.value);
				break;
			default:
				e.preventDefault();
				throw new Error("올바른 지역명을 입력해 주세요.");		
				break;
			}
			
		} catch (ex) {
			alert("올바른 지역명을 입력해 주세요. \n ex) 대구광역시 = 대구");
			console.log(ex);
		}
	}
	searchBtn.addEventListener('click',searchRegion);
	</script>
	
	<!-- 로그아웃 정보 전송 -->
	<script type="text/javascript">
		function chk_form() {
			document.getElementById('logout').submit();
		}
	</script>
</body>
</html>