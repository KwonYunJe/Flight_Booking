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

<title>With Us</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../resources/img/icon.png" rel="icon">
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

<!-- Template main CSS File -->
<link href="../resources/css/fly.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: PhotoFolio - v1.2.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script> <!-- ??????js -->
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<!-- ????????? css -->
<link href="../resources/css/fly.css" rel="stylesheet">

<style type="text/css">
/* ????????? css*/

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
		
 .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

   .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 8%;
        left: 50%;
		padding-left: 40px;
		padding-top: 20px;
        width: 900px;
        height: 800px;
		align-items : center;
        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-15%);
        
      }
       .m_body{
        height: 80%;
        padding: 10px;
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
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top"
		style="height: 100px;">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<a href="index.html"
				class="d-flex align-items-center  me-auto me-lg-0"
				style="transform: translate(10px, 0px);"> 
				<img src="../resources/img/logo.png" alt=""
				style="width: 150px; height: 50px;">
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="search_flight.jsp" class="active">?????????</a></li>
					<li><a href="../tour/tour_main.jsp">????????????</a></li>
					<li class="dropdown"><a href="#"><span>??????????????????</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="gallery.html">???????????????</a></li>
							<li><a href="gallery.html">???????????????</a></li>
							<li><a href="gallery.html">???????????????</a></li>
							<li><a href="gallery.html">???????????????</a></li>
							<li><a href="gallery.html">???????????????</a></li>
							<li><a href="gallery.html">???????????????</a></li>
							<li class="dropdown"><a href="#"><span>?????????</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">????????????</a></li>
									<li><a href="#">????????????</a></li>
								</ul></li>
						</ul></li>
					<li><a href="services.html">?????????</a></li>
				</ul>
			</nav>
			<!-- .navbar -->

				<%
		if (session.getAttribute("member") == null) {
		%>
			<div class="header-user">
				<li><a href="../tour/login.jsp" >?????????</a></li>
			</div>
			
		<%
		} else {
		%>
			<div class="header-user">
				<li class="dropdown"><a href="#"><span><%= session.getAttribute("member")%>??? ???????????????!</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="gallery.html">?????????</a></li>
							<form id="logout" action="logout" method="post">
								<li><a href="#" onclick="return chk_form()">????????????</a></li>
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
		<!-- ======= Services Section ======= -->
		<section id="services" class="page-header" style="margin-top: 10px;">
			<div class="container">
				<!-- ????????? ?????? ?????? (?????????, ?????????, ??????, ????????????) -->
				<div>
					<%
					// controller?????? ?????? model ????????????
					ArrayList<FlightListVO> flightList = (ArrayList) request.getAttribute("flightList");
					ArrayList<FlightVO> searchList = (ArrayList) request.getAttribute("searchList");

					// ???????????? ????????? ???
					String dep = searchList.get(0).getDeparture(); // ?????????
					String arr = searchList.get(0).getArrival(); // ?????????	
					String date = searchList.get(0).getAirdate(); // ??????
					String adult = searchList.get(0).getAdult(); // ??????
					String child = searchList.get(0).getChild(); // ??????
					String baby = searchList.get(0).getBaby(); // ??????

					// ?????????, ????????? value??? ????????? ????????? (ex ??????_PUS -> PUS)
					String target = "_"; // ?????? ????????? : _
					int target_dep = dep.indexOf(target) + 1; // ????????? ??????????????? ?????? "_"??? index + 1
					int target_arr = arr.indexOf(target) + 1; // ????????? ??????????????? ?????? "_"??? index + 1
					String depart = dep.substring(target_dep); // ????????? ??????????????? ?????? "_"?????? ??????("_" ??? ????????? ??????)
					String arrival = arr.substring(target_arr); // ????????? ??????????????? ?????? "_"?????? ??????("_" ??? ????????? ??????)
//					System.out.println(depart + " " + arrival);
//					System.out.println(dep + " " + arr + " " + date);

					//     dep, arr		 : ??????_PUS ??????
					// depart, arrival   : PUS ??????
					
					// ?????? bar ????????? (22-12-30 -> 221230)
					String nobarDate = date.replace("-", "");
					%>
					
					<div style="text-align: center;">
						<h3><%=dep%>  ???    <%=arr%></h3>
						<br>
						<div class="row">
							<div class="col">
								<h5>
								?????? <%=adult%>
								?????? <%=child%>
								?????? <%=baby%>
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
				 <!-- ?????? -->
				<div class="modal" id="modal">
				  <div class="modal_body">	
				 	    <div class="m_body">
				     		<canvas id="testChart" width=800px height=750px></canvas>
				    	</div>
				    
				  </div>
				</div> 
				<!-- ?????? -->
					<!-- ??????????????? ????????? ?????? -->
	<script>
		var ctx = document.getElementById('testChart');
		var config = {
			type : 'bar',
			data : {
				labels : [ "1???", "2???", "3???", "4???","5???",
					"6???", "7???", "8???", "9???","10???",
					"11???", "12???", "13???", "14???","15???",
					"16???", "17???", "18???", "19???","20???",
					"21???", "22???", "23???", "24???","25???",
					"26???", "27???", "28???", "29???","30???","31???"],   //x???         
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
					text : '?????? ?????? ??????', //??????  
					fontSize : 20
				},
				animation : {
					animateScale : true,
					animateRotate : true
				},
				scales: {
					yAxes: [{
						ticks: {
							min: 0, //????????? ?????? ??????
							max: 150000, // ????????? ?????? ??????
							stepSize: 25000, // ????????? ?????? ?????? 
							fontSize : 14, //?????? ?????? 
						}
					}]
				}
			}
		};
		var myDoughnutChart = new Chart(ctx, config);
	</script>
	<!-- ??????????????? ????????? ??? --> 
	
	
					<!-- ?????? (?????? div) -->
					<div class="col-sm-4">
							<a class="cta-btn">?????? ?????? ??????</a> <br> <br>
			
				

	
	<!-- ????????? ????????? -->
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
						
						<h5>????????????</h5>
						<input type="time" class="form-control">
						<br>
						<h5>??? ????????????</h5>
						<input type="range" class="form-control-range" name="range" min="0" max="10" step="0.5" id="timeRange" style="width: 100%;">
						<p style="color: black"><span id="value"></span>??????</p>
    					<script>
        					var slider = document.getElementById("timeRange");
        					var output = document.getElementById("value");
        					output.innerHTML = slider.value;
        					slider.oninput = function(){
        						output.innerHTML = this.value;
        					}
    					</script>
						<br>
						<h5>?????????</h5>
						<select class="form-control">
 							<option>????????????</option>
 							<option>????????????</option>
 							<option>????????????</option>
 							<option>????????????</option>
 							<option>?????????</option>
 						</select>
						<!-- <div class="form-check">
  							<label class="form-check-label">
   							<input type="checkbox" class="form-check-input" value="">????????????
 	 						</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  	  						<input type="checkbox" class="form-check-input" value="">????????????
  							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">????????????
 							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">????????????
 							</label>
						</div>
						<div class="form-check">
  							<label class="form-check-label">
  							<input type="checkbox" class="form-check-input" value="">?????????
 							</label>
						</div> -->
						<br>
					</div>
					
					<!-- ????????? div -->
					<div class="col-sm-8">
						<div class="row">
							<!-- ????????? ????????? -->
 							<div class="col">
 								<h4>?????????</h4>
 								<%
 								int[] priceArr = new int[flightList.size()];
 								int minPrice = flightList.get(0).getPrice();	// minPrice(?????????)??? price ??? ????????? ????????????
// 								System.out.println("origin min ??? : " + minPrice);
 								for(int i = 0; i < flightList.size(); i++){
 									priceArr[i] = flightList.get(i).getPrice();	// price??? ?????? ????????? ??????????????? ????????? ????????? ??????
									if(priceArr[i] < minPrice){	// price?????? minPrice?????? ?????????
										minPrice = priceArr[i];	// minPrice??? price????????? ?????????
									}
// 									System.out.println("after min ??? : " + minPrice);
 								}
 								%>
								<h4>??? <fmt:formatNumber value="<%=minPrice %>" pattern="#,###"/></h4> <!-- ???????????? #,### ???????????? ?????? -->
 							</div>
 							<div class="col"></div>
 							<!-- ?????? ?????? -->
 							<div class="col" style="float: right; width: 100px;">
 								<div class="form-group">
 								<label>?????? ??????</label>
 								<select class="form-control" id="selectSort">
 									<option value="minPrice">????????????</option>
 									<option value="minDep">???????????????</option>
 									<option value="minTime">???????????????</option>
 								</select>
 								</div>
 							</div>
						</div>
						<br>  
						<!-- ?????? ?????? ?????? ????????? -->
						<script type="text/javascript">
							$(document).ready(function () {
								$('#selectSort').change(function () {
									var result = $('#selectSort option:selected').val();
									if(result == 'minPrice'){
										alert('????????????')
									} else if(result == 'minDep'){
										alert('???????????????')
					
									} else{
										alert('???????????????') 
									}
								})
							})
						</script>
						<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->
						<!-- ?????? ??? ????????? ?????? ????????? -->
						<!-- ?????? ?????? ??????  -->
						<%
						/* ArrayList<FlightListVO> temp = new ArrayList<FlightListVO>();
						for(int i = 0 ; i < flightList.size() - 1; i++){
							for(int j = flightList.size() - 1; j > i; j--){
								if(flightList.get(j - 1).getPrice() < flightList.get(j).getPrice()){
									temp = flightList.get(j - 1);
									flightList.get(j - 1) = flightList.get(j);
									flightList.get(j) = temp;
								}
							}
						} */
						%>
						<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->
												
						<!-- ????????? ?????? ?????? ?????? (????????? ??????) -->
						<%
						for (int i = 0; i < flightList.size(); i++) {
							String airline = flightList.get(i).getAirline();
							int price = flightList.get(i).getPrice();
							String tour = flightList.get(i).getTour();
							String depT = flightList.get(i).getDepTime();
							String arrT = flightList.get(i).getArrTime();
						%>
						<div class="media border p-3" style="border-radius: 10px;"> <!-- ?????? ??? -->
							<div class="media-body">
								<div class="row" style="text-align: center;">
									<div class="col-sm-3" style="margin-top: 25px;">
										<h5 id="content"><%=airline%></h5>
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
										<h5>???<fmt:formatNumber value="<%=price%>" pattern="#,###"/></h5>
										<%
										if (tour.equals("????????????")) {	// ???????????? ??????????????? ??????
										%>
										<!-- ?????? ?????? ?????? ??? ????????? ?????? ???????????? ??????  -->
										<a class="cta-btn"
											href="https://ota.ybtour.co.kr/flight-search-result-go?tripTypeCode=OW&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&laborCount=0&studentCount=0&cabinClassCode=Y&deviceTypeCode=PC&itineraries%5B0%5D%5BoriginCityCodeIata%5D=<%=depart%>&itineraries%5B0%5D%5BdestinationCityCodeIata%5D=<%=arrival%>&itineraries%5B0%5D%5BdepartureDate%5D=<%=date%>&dynamicSearchYn=false&limits%5B0%5D=0&limits%5B1%5D=10">??????</a>
										<%
										} else if (tour.equals("?????????")) {	// ???????????? ???????????? ??????
											if (depart.equals("SEL")) {
												depart = "GMP";
											}
											if (arrival.equals("SEL")) {
												arrival = "GMP";
											}
										%>
										<a class="cta-btn"
											href="https://www2.webtour.com/da/da_list.asp?wItinerary=oneway&wItinerary_cnt=3&wDepCity=<%=depart%>&wArrCity=<%=arrival%>&wDepDate=<%=date%>&wArrDate=<%=date%>&wCarCode=KE%2COZ%2CLJ%2C7C%2CZE%2CTW%2CBX%2CRS%2C4H%2C4V%2CRF&wACnt=<%=adult%>&wCCnt=<%=child%>&wICnt=<%=baby%>&wSeatClass=All&wSeatClass_cnt=3&wSeatClass_1_txt=%C0%FC%C3%BC&wSeatClass_2_txt=%C0%CF%B9%DD%BC%AE%2F%C7%D2%C0%CE%BC%AE&wSeatClass_3_txt=%BA%F1%C1%EE%B4%CF%BD%BA%BC%AE">??????</a>
										<%
										} else if (tour.equals("????????????")) {
											if (depart.equals("SEL")) {
												depart = "GMP";
											}
											if (arrival.equals("SEL")) {
												arrival = "GMP";
											}
										%>
										<a class="cta-btn"
											href="https://sky.interpark.com/schedules/domestic/<%=depart%>-<%=arrival%>-<%=nobarDate%>?adt=<%=adult%>&chd=<%=child%>&inf=<%=baby%>&seat=ALL&pickAirLine=&pickmainFltNo=&pickSDate=">??????</a>
										<%
										} else if (tour.equals("???????????????")) {
										%>
										<a class="cta-btn"
											href="https://jejudo.com/air/list/search?City_Dep=<%=depart%>&City_Arr=<%=arrival%>&DateDep=<%=date%>&DateArr=<%=date%>&ACnt=<%=adult%>&CCnt=<%=child%>&ICnt=<%=baby%>&itinerary=OneWay">??????</a>
										<%
										} else if (tour.equals("????????????")) {
										%>
										<a class="cta-btn"
											href="https://wtdom2.hanatour.com/00001/DA/da_list.asp?wDepDate=<%=nobarDate%>&wDepCity=<%=depart%>&wArrCity=<%=arrival%>&wACnt=<%=adult%>&wCCnt=<%=child%>&wICnt=<%=baby%>&wItinerary=oneway&wSeatClass=ALL&">??????</a>
										<%
										} else if (tour.equals("????????????")){
											String date2 = date.replaceAll("-","");
										%>
										<a class="cta-btn"
											href="https://krair.lottetour.com/subIndexNew.lts?arr0=<%=arrival%>&depdate0=<%=date2%>&inf=0&dep0=<%=depart%>&trip=OW&adt=<%=adult%>&chd=<%=child%>">??????</a>
										<%
										} else if(tour.equals("??????????????????"))
										{
										%>
										<a class="cta-btn"
											href="https://www.whypaymore.co.kr/d/flt/dom/scheds?depLocs=<%=depart%>&arrLocs=<%=arrival%>&selectedIds=&dates=<%=date%>&datestemp=&airlines=KE&airlines=OZ&airlines=RF&airlines=BX&airlines=RS&airlines=YP&airlines=7C&airlines=LJ&airlines=TW&airlines=4V&airlines=4H&adultCount=<%=adult%>&childCount=<%=child%>&infantCount=<%=baby%>&tripType=1&searchSource=M&maintenanceType=TK&pageType=search">??????</a>	
										<%
										} else if(tour.equals("????????????")){
											String date2 = date.replaceAll("-", ".");
										%>
										<a class="cta-btn"
											href="https://air.dcjeju.net/realair/channel/auth/292?depCity=<%=depart%>&depDate=<%=date2%>&arrCity=<%=arrival%>&arrDate=<%=date2%>&waytype=OneWay&adultCnt=<%=adult%>&childCnt=<%=child%>&infantCnt=<%=baby%>">??????</a>
										<%
										} 
										%>
										<%-- else {
										%>
										<a class="cta-btn" href="#">??????</a>
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
				</div>
			</div>
		</section>
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

	<!-- Template main JS File -->
	<script src="../resources/js/main.js"></script>
	
	<!-- ???????????? ?????? ?????? -->
	<script type="text/javascript">
		function chk_form() {
			document.getElementById('logout').submit();
		}
	</script>

</body>
</html>