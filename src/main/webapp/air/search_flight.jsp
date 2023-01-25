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
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
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
        	<div class="col-lg-6 text-center">
	        	<button type="submit" class="btn-get-started" style="width: 250px;">항공권 검색</button>
        	</div>
        </div>
        </form>
      </div>
    </div>
  </section><!-- End Hero Section -->

  <main id="main" data-aos="fade" data-aos-delay="1500">
  	<div class="container">
    	<div>
    		<!-- 개인별 지역 검색 -->
    		<br>apple1234님은 부산을 제일 많이 검색하셨군요 ~!<hr>
    	</div>
    	<div>
    		<div class="row">
				<br><div class="col-sm-8">
				<div class="slides-3 swiper">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="나홀로나무" src="../resources/img/나홀로나무.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>제주</h4>
                  <h5>나홀로 나무</h5>
                  <p>제주도 제주시 한림읍 금악리 산 30-8</p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="한담해안산책로" src="../resources/img/한담해안산책로.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>제주</h4>
                  <h5>한담해안산책로</h5>
                  <p>제주특별자치도 제주시 애월읍 곽지리 </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="새별오름"  src="../resources/img/새별오름.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>제주</h4>
                  <h5>새별오름</h5>
                  <p>제주특별자치도 제주시 애월읍 봉성리 산 59-8</p>
                </div>
              </div>
            </div><!-- End testimonial item -->

			<div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="해운대 블루라인파크"  src="../resources/img/블루라인파크.bmp" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>부산</h4>
                  <h5>해운대 블루라인파크</h5>
                  <p>부산광역시 해운대구 청사포로 116 (중동)</p>
                </div>
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="감천문화마을"  src="../resources/img/감천문화마을.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>부산</h4>
                  <h5>감천문화마을</h5>
                  <p>부산광역시 사하구 감내2로 203</p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="황령산 전망대"  src="../resources/img/황령산전망대.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>부산</h4>
                  <h5>황령산 전망대</h5>
                  <p>부산광역시 남구 황령산로 391-39 (대연동)</p>
                </div>
              </div>
            </div><!-- End testimonial item -->
            
            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="서울숲"  src="../resources/img/서울숲.bmp" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>서울</h4>
                  <h5>서울숲</h5>
                  <p>서울특별시 성동구 뚝섬로 273 (성수동1가)</p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="한강시민공원"  src="../resources/img/한강시민공원.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>서울</h4>
                  <h5>한강시민공원</h5>
                  <p>서울특별시 마포구 마포나루길 467 </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

			<div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <img alt="덕수궁돌담길"  src="../resources/img/덕수궁돌담길.jpg" width="250px" height="150px">
                <br><br>
                <div class="profile mt-auto">
                  <h4>서울</h4>
                  <h5>덕수궁 돌담길</h5>
                  <p>서울특별시 중구 세종대로 지하 101 </p>
                </div>
              </div>
            </div><!-- End testimonial item -->
          </div>
          <div class="swiper-pagination"></div>
        </div>
				</div><br>
		    	<div class="col-sm-4" id="ranking" style="text-align: center;"></div>
    		</div>
    	</div>
  	</div>

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