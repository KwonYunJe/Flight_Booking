<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="navercrawl">
	출발지
	<select name="departure">
		<option value="서울+(인천/김포)_SEL">서울</option>
		<option value="PUS">부산</option>
		<option value="CJU">제주</option>
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
	목적지
	<select name="arrival">
		<option value="서울+(인천/김포)_SEL">서울</option>
		<option value="PUS">부산</option>
		<option value="CJU">제주</option>
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
	날짜
	<input type="date" name="airdate">
	<button type="submit">검색</button>
</form>
</body>
</html>