<%@page import="com.flight.booking.tour.PageMoveDTO"%>
<%@page import="com.flight.booking.tour.Criteria"%>
<%@page import="com.flight.booking.tour.BbsVO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>With Us</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

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

/* 검색창 */
.search-form {
  width: 80%;
  margin: 0 auto;
  margin-top: 1rem;
}

.search-form input {
  height: 100%;
  background: transparent;
  border: 0;
  display: block;
  width: 100%;
  padding: 1rem;
  font-size: 1rem;
}

.search-form select {
  background: transparent;
  border: 0;
  padding: 1rem;
  height: 100%;
  font-size: 1rem;
}

.search-form select:focus {
  border: 0;
}

.search-form button {
  height: 100%;
  width: 100%;
  font-size: 1rem;
}

.search-form button svg {
  width: 24px;
  height: 24px;
}

.card-margin {
  margin-bottom: 1.875rem;
}

@media (min-width: 992px) {
  .col-lg-2 {
    flex: 0 0 16.66667%;
    max-width: 16.66667%;
  }
}

.card {
  border: 0;
  box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
  -webkit-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
  -moz-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
  -ms-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
}

.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #ffffff;
  background-clip: border-box;
  border: 1px solid #e6e4e9;
  border-radius: 8px;
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
					<li><a href="../air/search_flight.jsp">항공권</a></li>
					<li><a href="tour_main.jsp">커뮤니티</a></li>
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
					<li><a href="bbsList?pageNum=1&amount=10" class="active">게시판</a></li>
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
							<li><a href="gallery.html">프로필</a></li>
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
			<!-- 게시판 시작 -->

			<div class="container">
				<div class="row">
        			<div class="card card-margin search-form">
            			<div class="card-body p-0">
                			<form id="search-form">
                    			<div class="row">
                        			<div class="col-12">
                            			<div class="row no-gutters">
                                			<div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    				<select class="form-control" id="search-type" name="searchType">
                                    					<option value="none" hidden>지역선택</option>
                                        				<option>서울</option>
                                       					<option>부산</option>
                                        				<option>울산</option>
                                        				<option>대구</option>
                                        				<option>인천</option>
                                    				</select>
                                			</div>
                                			<div class="col-lg-8 col-md-6 col-sm-12 p-0">
                                    			<label for="search-value" hidden>검색어</label>
                                    				<input type="text" placeholder="검색어..." class="form-control" id="search-value"
                                           				name="searchValue">
                                			</div>
                                			<div class="col-lg-1 col-md-3 col-sm-12 p-0">
                                    			<button type="submit" class="btn btn-base">
                                        		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            	viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                             	stroke-linecap="round" stroke-linejoin="round"
                                             	class="feather feather-search">
                                            	<circle cx="11" cy="11" r="8"></circle>
                                            	<line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                        		</svg>
                                    			</button>
                                			</div>
                            			</div>
                       	 			</div>
                    			</div>
                			</form>
            			</div>
        			</div>
    			</div>
				<hr/>
				<%
				List<BbsVO> pagingList = (List<BbsVO>) request.getAttribute("list");
				Criteria cri = (Criteria) request.getAttribute("clist");
				PageMoveDTO pageMove = (PageMoveDTO) request.getAttribute("pageMove");
				int amount = cri.getAmount();
				int pNum = cri.getPageNum();
				%>
				<table class="table table-striped">
					<thead>
					<tr>
						<th>작성자</th>
						<th>제목</th>
						<th>지역</th>
						<th>날짜</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="list">
					<tr>
						<td><c:out value="${list.userId}"></c:out></td>
						<td><a href="/booking/tour/bbsOne?oneKey=${list.bbsnum }"><c:out value="${list.title}" ></c:out></a></td>
						<td><c:out value="${list.area}"></c:out></td>
						<td><c:out value="${list.bbstime}"></c:out></td>
					</tr>
					</c:forEach>
					<tr>
						<td>164</td>
						<td>Bootstrap 강좌 입니다.</td>
						<td>관리자</td>
						<td>2023.01.09</td>
					</tr>
					
					<tr>
						<td>163</td>
						<td>2022년을 지나 2023년 새해로.</td>
						<td>뚱이</td>
						<td>2023.01.08</td>
					</tr>
					</tbody>
				</table>
				<hr/>
				<div>
					<a class="btn btn-primary float-end" href="BbsInsert.jsp">글쓰기</a>				
				</div>
				<br>
				<br>
				
				
			<div class="text-center">
		
				<ul class="pagination justify-content-center">
					<!-- 이전페이지 버튼 -->
					<c:if test="<%=pageMove.isPrev()%>">
						<li class="page-item">
						<a class="page-link" href="<%=pageMove.getStartPage() - 1%>" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
						</li>
					</c:if>

					<!-- 각 번호 페이지 버튼 -->
					<c:forEach var="num" begin="<%=pageMove.getStartPage()%>"
						end="<%=pageMove.getEndPage()%>">
						<li class="page-item ${pageMove.cri.pageNum == num ? "active":"" }"><a class="page-link" href="${num}">${num}</a></li>
					</c:forEach>

					<!-- 다음페이지 버튼 -->
					<c:if test="<%=pageMove.isNext()%>">
						<li class="page-item">
						<a class="page-link" href="<%=pageMove.getEndPage() + 1%>" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
						</li>
					</c:if>
				</ul>
		
			</div>
				
				<form id="moveForm" mothod="get">
					<input type="hidden" name="pageNum" value="${pageMove.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMove.cri.amount}">
				</form>
				<script type="text/javascript">
					let moveForm = $("#moveForm");

					$(".pagination a").on("click", function(e) {

					e.preventDefault();
					moveForm.find("input[name='pageNum']").val($(this).attr("href"));
					moveForm.attr("action", "/booking/tour/bbsList");
					moveForm.submit();

					});
				</script>
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