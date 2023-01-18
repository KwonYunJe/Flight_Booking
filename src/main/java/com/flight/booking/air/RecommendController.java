package com.flight.booking.air;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.booking.tour.UserVO;

//@Controller
//public class RecommendController {
//	@Autowired
//	RecommendDAO dao;
//	
//	@RequestMapping("air/recommend_insert")
//	public void insert_recomment(RecommendVO revo, FlightVO flightvo, UserVO uservo) {
//		dao.insert(revo,flightvo,uservo); // 검색 지역 삽입
//		
//		
//		String search_count2 = dao.SearchCount(revo); // 해당 id의 count 가져옴 
//		int search_count = Integer.parseInt(search_count2); // 정수형으로 변환
//		
//		if(search_count >10) {// 검색기록이 10개가 넘으면
//			dao.delete(); // 가장 나중에 했던 검색기록 삭제
//		}
//	
//	}
//	
//}
