<%@page import="com.flight.booking.air.FlightVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>항공권 최저가 </h2>
<hr>
<table border="1">
<tr>
<td>항공사</td>
<td>가격</td>
<td>판매사</td>
<td>출발시간</td>
<td>도착시간</td>

</tr>

<%
	ArrayList<String> airline = (ArrayList)request.getAttribute("airline");
	ArrayList<String> price = (ArrayList)request.getAttribute("price");
	ArrayList<String> tourCom = (ArrayList)request.getAttribute("tour");
	ArrayList<String> depTime = (ArrayList)request.getAttribute("depTime");
	ArrayList<String> desTime = (ArrayList)request.getAttribute("desTime");
	ArrayList<FlightVO> list = (ArrayList)request.getAttribute("list");
	
	String dep = list.get(0).getDeparture();
	String arr = list.get(0).getArrival();
	String date = list.get(0).getAirdate();
	
	// 문자열 자르기 (ex 부산_PUS -> PUS)
	String target = "_";
	int target_dep = dep.indexOf(target) + 1;
	int target_arr = arr.indexOf(target) + 1;
	String depart;
	String arrival;
	depart = dep.substring(target_dep);
	arrival = arr.substring(target_arr);
	System.out.println(depart + " " + arrival);
	System.out.println(dep + " " + arr + " " + date);
	
	// 항공권 검색 결과 출력
	for(int i = 0; i<10; i++) {
		String airs = airline.get(i);
		String pri = price.get(i);
		String tour = tourCom.get(i);
		String depT = depTime.get(i);
		String desT = desTime.get(i);
		%>		
		<tr>
		<td><%=airs%></td>
		<td><%=pri%></td>
		<td><%=tour%></td>
		<td><%=depT%></td>
		<td><%=desT%></td>
		</tr>
		
		<%
		if(tour.equals("노랑풍선")){
			System.out.println("노랑노랑");%>
			<td><a href="https://ota.ybtour.co.kr/flight-search-result-go?tripTypeCode=OW&adultCount=1&childCount=0&infantCount=0&laborCount=0&studentCount=0&cabinClassCode=Y&deviceTypeCode=PC&itineraries%5B0%5D%5BoriginCityCodeIata%5D=<%=depart %>&itineraries%5B0%5D%5BdestinationCityCodeIata%5D=<%=arrival %>&itineraries%5B0%5D%5BdepartureDate%5D=<%=date %>&dynamicSearchYn=false&limits%5B0%5D=0&limits%5B1%5D=10">클릭</a></td>
		<%
		}
	}
	%>

</table>
</body>
</html>