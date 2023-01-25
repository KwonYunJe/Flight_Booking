<%@page import="com.flight.booking.air.RankingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<strong style="font-size: 18px;">인기 검색 지역</strong>&nbsp;&nbsp;<i class="fi fi-rr-search"></i><br><br>
<%
	List<RankingVO> searchList = (List) request.getAttribute("rankList");
	for(int i = 0; i < searchList.size(); i++){
		String drank = searchList.get(i).get_id();
	%>
		<p><strong><%= i + 1 %></strong>&nbsp;&nbsp;&nbsp;<%= drank %></p>
	<%
	}
%>
