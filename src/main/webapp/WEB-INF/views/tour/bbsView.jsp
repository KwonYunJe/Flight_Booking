<%@page import="com.flight.booking.tour.ReplyVO"%>
<%@page import="com.flight.booking.tour.UserVO"%>
<%@page import="java.util.List"%>
<%@page import="com.flight.booking.tour.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	BbsVO bbs = (BbsVO) request.getAttribute("one");
	String loginedUserId = String.valueOf(session.getAttribute("member"));
	String loginedUser = String.valueOf(session.getAttribute("userid"));
%>
<%
	List<ReplyVO> rlist = (List<ReplyVO>) request.getAttribute("rList");
	String pRlist = rlist.toString();	//리스트 안에 내용이 있는지 없는지 파악하기 위해 toString을 이용하여 문자열을 담는다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>With Us</title>

<script type="text/javascript">
$(document).ready(function(){
let bbsNumber = <%=bbs.getBbsnum()%>;
let useridForDel = "<%=loginedUser%>" ;
	
	$.ajax({
			url : "roadReply",
			type : "post",
			data :{
				oneKey : bbsNumber
			},
			dataType : 'json',
			contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
			success : function(replyData){
				for(var i = 0 ; i < <%=rlist.size()%> ; i++){
					$("#replyUserId" + i).html(replyData[i].userid);
					$("#replyCont" + i).html(replyData[i].recont);
					$("#replyTime" + i).html(replyData[i].retime);
					$("#replyID" + i ).html(replyData[i].reid);
					if(useridForDel == replyData[i].userid){
						$("#indelKey" + i).html('<button type="submit">삭제</button>'); 
						//$("#delTD" + i).html('<Button type="submit" id="delBtn" class="btn btn-primary" name="replyDel">삭제</Button>');
						$("#delKey" + i).attr('value' , replyData[i].reid);
					}
				}
			}
	})
})

</script>

<meta content="" name="description">
<meta content="" name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

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
			<!-- BbsView 시작 -->

			<div class="container">
			<a id="sb"></a>
            	<div class="row">
                	<div class="card-body p-0">
                    <table class="table table-condensed">
                        <thead>
                            <tr align="center">
                                <th width="10%">제목</th>
                                <th width="85%"><%=bbs.getTitle() %></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>작성일</td>
                                <td><%=bbs.getBbstime() %></td>
                                <%if(loginedUserId.equals(bbs.getUserId())){ %>
                                <td>
                                	<form action="bbsDelete">
                                		<input type="hidden" value=" <%= bbs.getBbsnum()%>" name="delKey">
                                		<button type="submit">삭제</button>
                                	</form>
                                </td> <%} %>
                            </tr>
                            <tr>
                                <td>글쓴이</td>
                                <td>
                                <%=bbs.getUserId() %> <span style='float:right'>조회 : 0</span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <p style="color:black;"><%=bbs.getbbscont()%></p>
                       
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <%if(pRlist.equals("[]")){ //담긴 문자열이 []과 동일하면 리스트가 비어있음을 의미%>
					<div>작성된 댓글이 없습니다.</div>
					<%}else{%>
					
                    <table id="commentTable" class="table table-condensed"></table>
                    <table class="table table-condensed">
                        <tr align="center">
                                <th width="5%">no</th>
                                <th width="5%">작성자</th>
                                <th width="70%">내용</th>
                                <th width="10%">작성시간</th>
                                <th width="10%"></th>
                            </tr>
                        <%
							for(int i = 0 ; i < rlist.size() ; i++){
						%>
						<tr style="text-align: center">
							<td id="replyID<%=i%>"></td>
							<td id="replyUserId<%=i%>"> </td>
							<td id="replyCont<%=i%>"></td>
							<td id="replyTime<%=i%>"></td>
							<td width="5%"   id="delTD<%=i%>">
							<%if(String.valueOf(loginedUser).equals(String.valueOf(rlist.get(i).getUserid()))){ %>
								<form action="deleteReply" method="post">
									<div id="indelKey<%=i%>"></div>
									<input type="hidden" name="reid" value="" id="delKey<%=i%>">
									<input type="hidden" name="bbsnum" value="<%=bbs.getBbsnum()%>">
								</form>
							<%}%>
							</td>
							
						</tr>
						<%
							}
						%>
                    </table>
                    <%
						} 
					%>
					
					
					<%
						if (session.getAttribute("member") == null) {
					%>
					댓글 작성은 로그인 후 이용가능합니다.
					<%
						} else {
					%>
						<input type="hidden"  id="rUserId" name="userid" value="<%=loginedUserId %>">
						<input type="hidden" id="bbsnum" value="  <%=bbs.getBbsnum() %>" name="bbsnum">
						작성자 : <%=session.getAttribute("member") %><br>
						<textarea id="recont" name="recont" class="form-control col-lg-12" style="width:100%" rows="5"></textarea>
						<table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list" class="btn btn-primary">목록</button>
                                        <button type="button" id="modify" class="btn btn-primary">수정</button>
                                        <%if(loginedUserId.equals(bbs.getUserId())){ %>
                                        <form action="/booking/tour/bbsDelete">
											<input type="hidden" name="delKey" value="<%=bbs.getBbsnum() %>"> 
                                        	<button type="button" id="delete" class="btn btn-primary">삭제</button>
                                        </form>
                                        <%} %>
                                        <button type="button" id="sendReply" class="btn btn-primary">글쓰기</button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
					<%
						}
					%>
					
					
                    
					</div>
            </div>
            <hr/>
            <script type="text/javascript">
						$("#sendReply").on("click",function(){
						let rUserID =  $("#rUserId").val();
						let rBbsNum = <%=bbs.getBbsnum()%>
						let rContent = $("#recont").val();
	
	
						$.ajax({
							url : "writeReply",
							type : "post",
							contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
						data : {
							userid : rUserID,
							bbsnum : rBbsNum,
							recont : rContent
						},
						dataType : 'json',
							success : function(writeResult){
								console.log("plz");
								document.location.href = document.location.href;
						},
						error : function(test){
							console.log(test)
						}
					})
	
				})

				

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
	
</body>
</html>