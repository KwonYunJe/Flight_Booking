<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>

<!-- <script>

	var num = [2,1,2,3,4,4,1,3,3,5,3,3,2,3,3,5,3,4]
	
    $.ajax({
        method: "GET",
        // url: "https://dapi.kakao.com/v2/search/blog",
        url: "http://127.0.0.1:5050/plus",  // flask 서버로 던진다.
        // data: { review : ["리뷰1","리뷰2","리뷰3"]}
        data: {"x" : num},
        // headers: {Authorization: "KakaoAK 9068483aa30e9a2150dad3527a5295a4"}
    })
        .done(function (args) {
        	
            alert("Data Saved: " + args.place )
        });
</script> -->

</body>


</html>