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