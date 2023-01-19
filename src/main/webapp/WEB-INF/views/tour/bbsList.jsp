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
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<style type="text/css">
.pageInfo {
	list-style: none;
	display: inline-block;
	margin: 50px 0 0 100px;
}

.pageInfo li {
	float: left;
	font-size: 20px;
	margin-left: 18px;
	padding: 7px;
	font-weight: 500;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: underline;
}
 .active{
      background-color: #cdd5ec;
  }
</style>
<title>Insert title here</title>
</head>
<body>
<<<<<<< Updated upstream
	<%
		List<BbsVO> pagingList = (List<BbsVO>) request.getAttribute("list");
	Criteria cri = (Criteria) request.getAttribute("clist");
	PageMoveDTO pageMove = (PageMoveDTO) request.getAttribute("pageMove");
	int amount = cri.getAmount();
	int pNum = cri.getPageNum();
	%>


	<table border="1" style="text-align: center">
		<tr>
			<td>작성자</td>
			<td>제목</td>
			<td>지역</td>
			<td>작성시간</td>
		</tr>
		<c:forEach items="${list}" var="list">
			<tr>
				<td><c:out value="${list.userId}"></c:out></td>
				<td><a href="/booking/tour/bbsOne?oneKey=${list.bbsnum }"><c:out value="${list.title}" ></c:out></a></td>
				<td><c:out value="${list.area}"></c:out></td>
				<td><c:out value="${list.bbstime}"></c:out></td>
			</tr>
		</c:forEach>
	</table>

	<div class="pageInfo_wrap">
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">

				<!-- 이전페이지 버튼 -->
				<c:if test="<%=pageMove.isPrev()%>">
					<li class="pageInfo_btn previous"><a
						href="<%=pageMove.getStartPage() - 1%>">Previous</a></li>
				</c:if>

				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="<%=pageMove.getStartPage()%>"
					end="<%=pageMove.getEndPage()%>">
					<li class="pageInfo_btn ${pageMove.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
				</c:forEach>

				<!-- 다음페이지 버튼 -->
				<c:if test="<%=pageMove.isNext()%>">
					<li class="pageInfo_btn next"><a
						href="<%=pageMove.getEndPage() + 1%>">Next</a></li>
				</c:if>
			</ul>
=======
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
			<!-- 게시판 시작 -->
			<%if(session.getAttribute("member") == null){%>
			<div style="text-align: center">
			로그인이 필요한 기능입니다. 
			</div>
		<%}else{ 
					if((int)session.getAttribute("buying") == 0){
		%>
			<div style="text-align: center">
			티켓을 구입한 뒤 게시판을 사용하실 수 있습니다.
			</div>
		<%
					}else{
		%>
			<div class="container">
				<div class="row">
        			<div class="card card-margin search-form">
            			<div class="card-body p-0">
                			<form id="search-form" action="searchBBS">
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
				if(request.getAttribute("list").equals("NullList")){%>
					작성된 게시글이 없습니다.
				<%}else{
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
				<%
						}
					} 
				%>
			</div>
		</section>
	</main>
	<!-- End #게시판-->
<%} %>
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">&copy; Made by SCH, KSJ, KYJ, KYM</div>
>>>>>>> Stashed changes
		</div>
	</div>

	<form id="moveForm" mothod="get">
		<input type="hidden" name="pageNum" value="${pageMove.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMove.cri.amount}">
	</form>
	<script type="text/javascript">
		let moveForm = $("#moveForm");

		$(".pageInfo a").on("click", function(e) {

			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/booking/tour/bbsList");
			moveForm.submit();

		});
	</script>

</body>
</html>