<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>PhotoFolio Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../resources/img/favicon.png" rel="icon">
  <link href="../resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
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
<style>
	.flight-input{
		height: 50px;
		width: 200px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "map_reduce",
			success : function(x){
				$('#ranking').html(x)
			}
		})
	})
</script>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center  me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <i class="bi bi-camera"></i>
        <h1>PhotoFolio</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.html" class="active">Home</a></li>
          <li><a href="about.html">About</a></li>
          <li class="dropdown"><a href="#"><span>Gallery</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="gallery.html">Nature</a></li>
              <li><a href="gallery.html">People</a></li>
              <li><a href="gallery.html">Architecture</a></li>
              <li><a href="gallery.html">Animals</a></li>
              <li><a href="gallery.html">Sports</a></li>
              <li><a href="gallery.html">Travel</a></li>
              <li class="dropdown"><a href="#"><span>Sub Menu</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="#">Sub Menu 1</a></li>
                  <li><a href="#">Sub Menu 2</a></li>
                  <li><a href="#">Sub Menu 3</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="services.html">Services</a></li>
          <li><a href="contact.html">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->

      <div class="header-social-links">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6 text-center">
          <h2>Start Your Journey With Us</h2>
          <p>Blanditiis praesentium aliquam illum tempore incidunt debitis dolorem magni est deserunt sed qui libero. Qui voluptas amet.</p>
        </div>
        <form action="crawling_flight">
        	<div>
        		<table>
        		<tr>
        			<td>출발지</td>   	
       			 	<td>도착지</td>   	
        			<td>여행일정</td>   	
       			 	<td>성인(만13세 이상)</td>   	
        			<td>소아(만13세 미만)</td>   	
        			<td>유아(만2세 미만)</td>   	
        		</tr>
        		<tr>
        			<td>
        				<select name="departure" class="flight-input">
							<option value="서울+(인천/김포)_SEL">서울</option>
							<option value="부산_PUS">부산</option>
							<option value="제주_CJU">제주</option>
							<option value="인천_ICN">인천</option>
							<option value="김포_GMP">김포</option>
							<option value="대구_TAE">대구</option>
							<option value="광주_KWJ">광주</option>
							<option value="무안_MWX">무안</option>
							<option value="청주_CJJ">청주</option>
							<option value="울산_USN">울산</option>
							<option value="양양_YNY">양양</option>
							<option value="여수_RSU">여수</option>
							<option value="원주_WJU">원주</option>
							<option value="군산_KUV">군산</option>
							<option value="포항_KPO">포항</option>
							<option value="사천_HIN">사천</option>
						</select>
					</td>
					<td>
        				<select name="arrival" class="flight-input">
							<option value="서울+(인천/김포)_SEL">서울</option>
							<option value="부산_PUS">부산</option>
							<option value="제주_CJU">제주</option>
							<option value="인천_ICN">인천</option>
							<option value="김포_GMP">김포</option>
							<option value="대구_TAE">대구</option>
							<option value="광주_KWJ">광주</option>
							<option value="무안_MWX">무안</option>
							<option value="청주_CJJ">청주</option>
							<option value="울산_USN">울산</option>
							<option value="양양_YNY">양양</option>
							<option value="여수_RSU">여수</option>
							<option value="원주_WJU">원주</option>
							<option value="군산_KUV">군산</option>
							<option value="포항_KPO">포항</option>
							<option value="사천_HIN">사천</option>
						</select>
					</td>
        			<td>
        				<input type="date" class="flight-input" name="airdate">
     			   	</td>
      			  	<td>
     				   	<input type="number" class="flight-input" name="adult" value="1">
        			</td>
        			<td>
        				<input type="number" class="flight-input" name="child" value="0">
        			</td>
        			<td>
        				<input type="number" class="flight-input" name="baby" value="0">
        			</td>
        		</tr>
        	</table>
        </div>
        <br>
        <div class="row justify-content-center">
        <!-- <div id="ranking"></div> -->
        	<div class="col-lg-6 text-center">
	        	<button type="submit" class="btn-get-started" style="width: 250px;">항공권 검색</button>
        	</div>
        </div>
        </form>
      </div>
    </div>
  </section><!-- End Hero Section -->

  <main id="main" data-aos="fade" data-aos-delay="1500">
    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container-fluid">

        <div class="row gy-4 justify-content-center">
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-1.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-1.jpg" title="Gallery 1" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-2.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-2.jpg" title="Gallery 2" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-3.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-3.jpg" title="Gallery 3" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-4.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-4.jpg" title="Gallery 4" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-5.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-5.jpg" title="Gallery 5" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-6.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-6.jpg" title="Gallery 6" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-7.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-7.jpg" title="Gallery 7" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-8.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-8.jpg" title="Gallery 8" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-9.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-9.jpg" title="Gallery 9" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-10.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-10.jpg" title="Gallery 10" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-11.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-11.jpg" title="Gallery 11" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-12.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-12.jpg" title="Gallery 12" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-13.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-13.jpg" title="Gallery 13" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-14.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-14.jpg" title="Gallery 14" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-15.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-15.jpg" title="Gallery 15" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="gallery-item h-100">
              <img src="assets/img/gallery/gallery-16.jpg" class="img-fluid" alt="">
              <div class="gallery-links d-flex align-items-center justify-content-center">
                <a href="assets/img/gallery/gallery-16.jpg" title="Gallery 16" class="glightbox preview-link"><i class="bi bi-arrows-angle-expand"></i></a>
                <a href="gallery-single.html" class="details-link"><i class="bi bi-link-45deg"></i></a>
              </div>
            </div>
          </div><!-- End Gallery Item -->

        </div>

      </div>
    </section><!-- End Gallery Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>PhotoFolio</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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