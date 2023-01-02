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
		<td>예약</td>
	</tr>
	
	<%
	// controller에서 만든 model 가져오기
	ArrayList<String> airline = (ArrayList)request.getAttribute("airline");
	ArrayList<String> price = (ArrayList)request.getAttribute("price");
	ArrayList<String> tourCom = (ArrayList)request.getAttribute("tour");
	ArrayList<String> depTime = (ArrayList)request.getAttribute("depTime");
	ArrayList<String> desTime = (ArrayList)request.getAttribute("desTime");
	ArrayList<FlightVO> list = (ArrayList)request.getAttribute("list");
	
	// 사용자가 입력한 값
	String dep = list.get(0).getDeparture();	// 출발지
	String arr = list.get(0).getArrival();		// 도착지	
	String date = list.get(0).getAirdate();		// 날짜
	String adult = list.get(0).getAdult();		// 성인
	String child = list.get(0).getChild();		// 소아
	String baby = list.get(0).getBaby();		// 유아
	
	// 출발지, 도착지 value값 문자열 자르기 (ex 부산_PUS -> PUS)
	String target = "_";	// 기준 문자열 : _
	int target_dep = dep.indexOf(target) + 1;	// 출발지 문자열에서 문자 "_"의 index + 1
	int target_arr = arr.indexOf(target) + 1;  	// 도착지 문자열에서 문자 "_"의 index + 1
	String depart = dep.substring(target_dep);		// 출발지 문자열에서 문자 "_"까지 삭제("_" 뒷 부분만 남김)
	String arrival = arr.substring(target_arr);	// 도착지 문자열에서 문자 "_"까지 삭제("_" 뒷 부분만 남김)
//	System.out.println(depart + " " + arrival);
//	System.out.println(dep + " " + arr + " " + date);
	
	// 날짜 bar 없애기 (22-12-30 -> 221230)
	String nobarDate = date.replace("-", "");
//	System.out.print(nobarDate);
	
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
		<%
		if(tour.equals("노랑풍선")){ %>
			<td><button><a href="https://ota.ybtour.co.kr/flight-search-result-go?tripTypeCode=OW&adultCount=<%=adult %>&childCount=<%=child %>&infantCount=<%=baby %>&laborCount=0&studentCount=0&cabinClassCode=Y&deviceTypeCode=PC&itineraries%5B0%5D%5BoriginCityCodeIata%5D=<%=depart %>&itineraries%5B0%5D%5BdestinationCityCodeIata%5D=<%=arrival %>&itineraries%5B0%5D%5BdepartureDate%5D=<%=date %>&dynamicSearchYn=false&limits%5B0%5D=0&limits%5B1%5D=10">예약하기</a></button></td>
		<%
		} else if(tour.equals("웹투어")){
			if(depart.equals("SEL")){
				depart = "GMP";
			}
			if(arrival.equals("SEL")){
				arrival = "GMP";
			}
			%>
			<td><button><a href="https://www2.webtour.com/da/da_list.asp?wItinerary=oneway&wItinerary_cnt=3&wDepCity=<%=depart %>&wArrCity=<%=arrival %>&wDepDate=<%=date %>&wArrDate=<%=date %>&wCarCode=KE%2COZ%2CLJ%2C7C%2CZE%2CTW%2CBX%2CRS%2C4H%2C4V%2CRF&wACnt=<%=adult %>&wCCnt=<%=child %>&wICnt=<%=baby %>&wSeatClass=All&wSeatClass_cnt=3&wSeatClass_1_txt=%C0%FC%C3%BC&wSeatClass_2_txt=%C0%CF%B9%DD%BC%AE%2F%C7%D2%C0%CE%BC%AE&wSeatClass_3_txt=%BA%F1%C1%EE%B4%CF%BD%BA%BC%AE">예약하기</a></button></td>
		<%
		} else if(tour.equals("인터파크")){
			if(depart.equals("SEL")){
				depart = "GMP";
			}
			if(arrival.equals("SEL")){
				arrival = "GMP";
			}
			%>
			<td><button><a href="https://sky.interpark.com/schedules/domestic/<%=depart %>-<%=arrival %>-<%=nobarDate %>?adt=<%=adult %>&chd=<%=child %>&inf=<%=baby %>&seat=ALL&pickAirLine=&pickMainFltNo=&pickSDate=">예약하기</a></button></td>
		<%
		} else if(tour.equals("제주도닷컴")){ %>
			<td><button><a href="https://jejudo.com/air/list/search?City_Dep=<%=depart %>&City_Arr=<%=arrival %>&DateDep=<%=date %>&DateArr=<%=date %>&ACnt=<%=adult %>&CCnt=<%=child %>&ICnt=<%=baby %>&itinerary=OneWay">예약하기</a></button></td>
		<%
		} else if(tour.equals("하나투어")){ %>
			<td><button><a href="https://wtdom2.hanatour.com/00001/DA/da_list.asp?wDepDate=<%=nobarDate %>&wDepCity=<%=depart %>&wArrCity=<%=arrival %>&wACnt=<%=adult %>&wCCnt=<%=child %>&wICnt=<%=baby %>&wItinerary=oneway&wSeatClass=ALL&">예약하기</a></button></td>
		<%
		}	
		%>
		</tr>
	<%	
	}
	%>
</table>
</body>
</html>