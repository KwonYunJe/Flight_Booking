<%@page import="java.util.Arrays"%>
<%@page import="com.flight.booking.air.FlightListVO"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.flight.booking.air.FlightVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
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

<!-- Template main CSS File -->
<link href="../resources/css/main.css" rel="stylesheet">

<!-- 모달창 css -->
<link href="../resources/css/fly.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: PhotoFolio - v1.2.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
 .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 130%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

   .modal.show {
        display: block;
      }

      .modal_body {
      position : fixed;
      top: 300px;
      left : 50%;
      margin : auto;
      	 width: 900px;
        height: 800px;
		/* align-items : center; */
        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
        
        
    /*position: absolute;
        top: 20px;
        left: 50%;
		padding-left: 40px;
		padding-top: 20px;
       

        transform: translateX(-50%) translateY(-15%); */
        
      }
       .m_body{
        height: 80%;
        padding: 10px;
      }

</style>
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script> <!-- 차트js -->
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>



</head>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

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
					ArrayList<FlightVO> searchList = (ArrayList) request.getAttribute("searchList");
					
					ArrayList<FlightListVO> sortDepart = (ArrayList) request.getAttribute("sortDepart");
					ArrayList<FlightListVO> sortPrice = (ArrayList) request.getAttribute("sortPrice");
					
					ArrayList<FlightListVO> koreanairList = (ArrayList) request.getAttribute("koreanairList");
					ArrayList<FlightListVO> jinairList = (ArrayList) request.getAttribute("jinairList");
					ArrayList<FlightListVO> jejuairList = (ArrayList) request.getAttribute("jejuairList");
					ArrayList<FlightListVO> asianaairList = (ArrayList) request.getAttribute("asianaList");
					ArrayList<FlightListVO> airbusanList = (ArrayList) request.getAttribute("airbusanList");

					// 사용자가 검색한 값
					String dep = searchList.get(0).getDeparture(); // 출발지
					String arr = searchList.get(0).getArrival(); // 도착지	
					String date = searchList.get(0).getAirdate(); // 날짜
					String adult = searchList.get(0).getAdult(); // 성인
					String child = searchList.get(0).getChild(); // 소아
					String baby = searchList.get(0).getBaby(); // 유아

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
				<!-- 모달 -->
				<div class="modal" id="modal">
				  <div class="modal_body">	
				 	    <div class="m_body">
				     		<canvas id="testChart" width=800px height=750px></canvas>
				    	</div>
				    
				  </div>
				</div> 
				<!-- 모달 -->
					<!-- 방문자추이 그래프 시작 -->
	<script>
		var ctx = document.getElementById('testChart');
		var config = {
			type : 'bar',
			data : {
				labels : [ "1일", "2일", "3일", "4일","5일",
					"6일", "7일", "8일", "9일","10일",
					"11일", "12일", "13일", "14일","15일",
					"16일", "17일", "18일", "19일","20일",
					"21일", "22일", "23일", "24일","25일",
					"26일", "27일", "28일", "29일","30일","31일"],   //x축         
				datasets : [{
					data :  [
					<% ArrayList<Integer> changeList = (ArrayList)request.getAttribute("changeList");
			    	  for(int i=0; i<changeList.size(); i++) {
			    		  int pri = changeList.get(i); %>
			    		  <%=pri%>,
			    		  <%}%>],
					                
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
					text : '가격 변동 추이', //제목  
					fontSize : 20
				},
				animation : {
					animateScale : true,
					animateRotate : true
				},
				scales: {
					yAxes: [{
						ticks: {
							min: 0, //그래프 수치 최소
							max: 150000, // 그래프 수치 최대
							stepSize: 25000, // 그래프 점선 간격 
							fontSize : 14, //폰트 크기 
						}
					}]
				}
			}
		};
		var myDoughnutChart = new Chart(ctx, config);
	</script>
	<!-- 방문자추이 그래프 끝 -->
	
	
					<!-- 필터 (왼쪽 div) -->
					<div class="col-sm-4">
							<a class="cta-btn">가격 변동 추이</a> <br> <br>
			
				

	
	<!-- 모달창 띄우기 -->
   <script>
      const body = document.querySelector('body');
      const modal = document.querySelector('.modal');
      const btnOpenPopup = document.querySelector('.cta-btn');

      btnOpenPopup.addEventListener('click', () => {
        modal.classList.toggle('show');

        if (modal.classList.contains('show')) {
          body.style.overflow = 'hidden';
        }
      });

      modal.addEventListener('click', (event) => {
        if (event.target === modal) {
          modal.classList.toggle('show');

          if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });
    </script>
						
						<h5>출발시간</h5>
						<input type="time" class="form-control">
						<br>
						<h5>총 소요시간</h5>
						<input type="range" class="form-control-range" name="range" min="0" max="10" step="0.5" id="timeRange" style="width: 100%;">
						<p style="color: black"><span id="value"></span>시간</p>
    					<script>
        					var slider = document.getElementById("timeRange");
        					var output = document.getElementById("value");
        					output.innerHTML = slider.value;
        					slider.oninput = function(){
        						output.innerHTML = this.value;
        					}
    					</script>
						<br>
						<h5>항공사</h5>
						<select class="form-control" id ="selectFilter">
							<option value="전체" selected>전체</option>
 							<option value="대한항공">대한항공</option>
 							<option value="아시아나">아시아나</option>
 							<option value="에어부산">에어부산</option>
 							<option value="제주항공">제주항공</option>
 							<option value="진에어">진에어</option>
 						</select>
						<!-- <div class="form-check">
  							<label class="form-check-label">
   							<input type="checkbox" class="form-check-input" value="">대한항공
 	 						</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  	  						<input type="checkbox" class="form-check-input" value="">아시아나
  							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">에어부산
 							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">제주항공
 							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">진에어
 							</label>
						</div> -->
						<br>
					</div>
					
					<!-- 오른쪽 div -->
					<div class="col-sm-8">
						<div class="row">
							<!-- 최저가 띄우기 -->
 							<div class="col">
 								<h4>최저가</h4>
 								<%
 								int minPrice = sortPrice.get(0).getPrice();	// minPrice(최저값)를 price 첫 값으로 임시지정
 								/*int[] priceArr = new int[flightList.size()];
// 								System.out.println("origin min 값 : " + minPrice);
 								for(int i = 0; i < flightList.size(); i++){
 									priceArr[i] = flightList.get(i).getPrice();	// price값 콤마 지우고 정수형으로 바꿔서 배열에 저장
									if(priceArr[i] < minPrice){	// price값이 minPrice보다 작다면
										minPrice = priceArr[i];	// minPrice를 price값으로 바꿔줌
									}
// 									System.out.println("after min 값 : " + minPrice);
 								}*/
 								%>
								<h4>￦ <fmt:formatNumber value="<%=minPrice %>" pattern="#,###"/></h4> <!-- 최저값을 #,### 형식으로 출력 -->
 							</div>
 							<div class="col"></div>
 							<!-- 정렬 부분 -->
 							<div class="col" style="float: right; width: 100px;">
 								<div class="form-group">
 								<label>정렬 기준</label>
 								<select class="form-control" id="selectSort">
 									<option value="minPrice">최저가순</option>
 										<option value="minDep">출발시간순</option>
 									
 								</select>
 								</div>
 							</div>
						</div>
						<br>  
						
						<!-- 항공사 필터 기준 선택 이벤트 -->
						<script type="text/javascript">
							$(document).ready(function () {
								$('#selectFilter').change(function () {
									var result = $('#selectFilter option:selected').val();
									if(result == '전체'){
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').show();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
								
									} else if(result == '대한항공'){
										alert('대한항공')
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').show();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
										
										
									} else if(result == '아시아나'){
										alert('아시아나')
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').show();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
										
										
									}else if(result == '에어부산'){
										alert('에어부산')
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').show();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
										
									}else if(result == '제주항공'){
										alert('제주항공')
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').show();
										$('#jinairDiv').hide();
										
									}else if(result == '진에어'){
										alert('진에어')
										$('#departSortDiv').hide();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').show();
									
									}
								})
							})
						</script>
						
						<!-- 정렬 기준 선택 이벤트 -->
						<script type="text/javascript">
							$(document).ready(function () {
								$('#selectSort').change(function () {
									var result = $('#selectSort option:selected').val();
									if(result == 'minPrice'){
										alert('최저가순')
										$('#departSortDiv').hide();
										$('#priceSortDiv').show();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
										
										
									} else if(result == 'minDep'){
										alert('출발시간순')
										$('#departSortDiv').show();
										$('#priceSortDiv').hide();
										$('#allairDiv').hide();
										$('#koreanairDiv').hide();									
										$('#asianaDiv').hide();
										$('#airbusanDiv').hide();
										$('#jejuairDiv').hide();
										$('#jinairDiv').hide();
								
									} 
								})
							})
						</script>
						<!-- 정렬 시작  -->
						
						<!-- 출발 시간순 정렬-->
						<div id="departSortDiv"  style="display:none;" >
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < sortDepart.size(); i++) {
							String airline = sortDepart.get(i).getAirline();
							int price = sortDepart.get(i).getPrice();
							String tour = sortDepart.get(i).getTour();
							String depT = sortDepart.get(i).getDepTime();
							String arrT = sortDepart.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
						
						
							<!-- 최저가순 정렬-->
						<div id="priceSortDiv">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < sortPrice.size(); i++) {
							String airline = sortPrice.get(i).getAirline();
							int price = sortPrice.get(i).getPrice();
							String tour = sortPrice.get(i).getTour();
							String depT = sortPrice.get(i).getDepTime();
							String arrT = sortPrice.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
						
						<!-- 정렬 끝 -->
						
					<!-- 필터링 시작 -->
						<!-- 전체 항공사 필터링 -->
						<div id="allairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < sortPrice.size(); i++) {
							String airline = sortPrice.get(i).getAirline();
							int price = sortPrice.get(i).getPrice();
							String tour = sortPrice.get(i).getTour();
							String depT = sortPrice.get(i).getDepTime();
							String arrT = sortPrice.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
							<!-- 대한항공 항공사 -->
						<div id="koreanairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < koreanairList.size(); i++) {
							String airline = koreanairList.get(i).getAirline();
							int price = koreanairList.get(i).getPrice();
							String tour = koreanairList.get(i).getTour();
							String depT = koreanairList.get(i).getDepTime();
							String arrT = koreanairList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
							<!-- 진에어 항공사 -->
						<div id="jinairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < jinairList.size(); i++) {
							String airline = jinairList.get(i).getAirline();
							int price = jinairList.get(i).getPrice();
							String tour = jinairList.get(i).getTour();
							String depT = jinairList.get(i).getDepTime();
							String arrT = jinairList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
							<!-- 제주항공 항공사 -->
						<div id="jejuairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < jejuairList.size(); i++) {
							String airline = jejuairList.get(i).getAirline();
							int price = jejuairList.get(i).getPrice();
							String tour = jejuairList.get(i).getTour();
							String depT = jejuairList.get(i).getDepTime();
							String arrT = jejuairList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
							<!-- 아시아나 항공사 -->
						<div id="asianaairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < asianaairList.size(); i++) {
							String airline = asianaairList.get(i).getAirline();
							int price = asianaairList.get(i).getPrice();
							String tour = asianaairList.get(i).getTour();
							String depT = asianaairList.get(i).getDepTime();
							String arrT = asianaairList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">예약</a>
										<%
										}
										%>  --%>
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
								<!-- 아시아나 항공사 -->
						<div id="asianaairDiv" style="display: none;">
										
						<!-- 항공권 검색 결과 출력 (크롤링 결과) -->
						<%
						for (int i = 0; i < asianaairList.size(); i++) {
							String airline = asianaairList.get(i).getAirline();
							int price = asianaairList.get(i).getPrice();
							String tour = asianaairList.get(i).getTour();
							String depT = asianaairList.get(i).getDepTime();
							String arrT = asianaairList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- 네모 칸 -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=airline%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=depT%>
											--<i class="fi fi-ts-plane-alt"></i>
											<%=arrT%></h5>
									</div>
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5><%=tour%></h5>
									</div>
									<div class="col-sm-3">
										<h5>￦<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
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
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">예약</a>
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
										} else if (tour.equals("롯데관광")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">예약</a>
										<%
										} else if(tour.equals("와이페이모어"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">예약</a>	
										<%
										} else if(tour.equals("선민투어")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">예약</a>
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
						<!-- 필터 끝 -->
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

	<!-- Template main JS File -->
	<script src="../resources/js/main.js"></script>

</body>
</html>