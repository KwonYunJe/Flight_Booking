<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>With Us</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/img/icon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">
<link href="resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">


<!-- Template Main CSS File -->
<link href="resources/css/fly.css" rel="stylesheet"> 	

<!-- CSS  -->
<style type="text/css">
  .navbar a,
  .navbar a:focus {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
    font-family: var(--font-primary);
    font-size: 15px;
    text-transform: uppercase;
    font-weight: 400;
    color: rgba(255, 255, 255, 0.5);
    letter-spacing: 1px;
    white-space: nowrap;
    transition: 0.3s;
  }
</style>
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top" style="height:100px;">
		<div class="container-fluid d-flex align-items-center justify-content-between" >
		
			<a href="index.html" class="d-flex align-items-center  me-auto me-lg-0" style="transform: translate(10px, 0px);"> 
				<img src="resources/img/logo.png" alt="" style="width: 150px; height: 50px;">
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
						</ul>
						</li>
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

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<h2>지역정보 커뮤니티</h2>
					<p>동행을 구하거나 여행지의 정보를 찾을 수 있어요!</p>
				</div>
				<form action="search_tour">
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<input type="text" name="region" class="flight-input" placeholder="지역을 입력해 주세요">
						</div>
					</div>
					<br>
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<button type="submit" class="btn-get-started" style="width: 250px;">지역정보 검색</button>
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
							<img src="resources/img/gallery/gallery-1.jpg" class="img-fluid" alt="">
							<div class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-1.jpg" title="Gallery 1"
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
							<img src="resources/img/gallery/gallery-2.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-2.jpg" title="Gallery 2"
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
							<img src="resources/img/gallery/gallery-3.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-3.jpg" title="Gallery 3"
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
							<img src="resources/img/gallery/gallery-4.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-4.jpg" title="Gallery 4"
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
							<img src="resources/img/gallery/gallery-5.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-5.jpg" title="Gallery 5"
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
							<img src="resources/img/gallery/gallery-6.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-6.jpg" title="Gallery 6"
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
							<img src="resources/img/gallery/gallery-7.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-7.jpg" title="Gallery 7"
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
							<img src="resources/img/gallery/gallery-8.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-8.jpg" title="Gallery 8"
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
							<img src="resources/img/gallery/gallery-9.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-9.jpg" title="Gallery 9"
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
							<img src="resources/img/gallery/gallery-10.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-10.jpg" title="Gallery 10"
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
							<img src="resources/img/gallery/gallery-11.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-11.jpg" title="Gallery 11"
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
							<img src="resources/img/gallery/gallery-12.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-12.jpg" title="Gallery 12"
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
							<img src="resources/img/gallery/gallery-13.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-13.jpg" title="Gallery 13"
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
							<img src="resources/img/gallery/gallery-14.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-14.jpg" title="Gallery 14"
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
							<img src="resources/img/gallery/gallery-15.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-15.jpg" title="Gallery 15"
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
							<img src="resources/img/gallery/gallery-16.jpg" class="img-fluid"
								alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a href="resources/img/gallery/gallery-16.jpg" title="Gallery 16"
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
				&copy; Made by SCH, KSJ, GYZ, GYM
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	

	<!-- Vendor JS Files -->
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/js/main.js"></script>
</body>
</html>