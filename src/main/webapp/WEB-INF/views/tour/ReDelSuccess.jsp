<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글삭제 성공 </title>
<script type="text/javascript">
	alert("댓글이 삭제되었습니다. ");
	location.href = "http://localhost:8080/booking/tour/bbsOne?oneKey=<%=request.getAttribute("bbsnum")%>"
</script>
</head>
<body>

</body>
</html>