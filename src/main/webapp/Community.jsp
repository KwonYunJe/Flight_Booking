<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	var a= 20;
	var pageNum = 0;
	var bbsNum = 0;
	var pageListNum = 0;
	var pageNow = 1;
	$(document).ready(function() {	/* 페이지가 로드되자마자 게시글의 데이터를 전부 받아온다 */
    						
		$.ajax({			
			url : "bbsA",
			type : "post"
			data : {
				
			},
			dataType : 'json',
			suceess : function(result){
				
			}
		})
		
    });

</script>
</head>
<body>
	<h1>게시판</h1>


	<script type="text/javascript">
	
	document.write('<table border="1">');
		for(let i = 0 ; i <  a; i++){
			document.write(
					'<tr id="bbsOneLine"><td id="indexNum"></td><td id="writer"></td><td id="title"></td><td id="area"></td><td id="time"></td></tr>');
		}
		document.write('</table>');
	</script>
</body>
</html>