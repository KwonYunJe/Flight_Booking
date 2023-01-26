package com.flight.booking.air;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.flight.booking.tour.UserVO;


@Component
public class RecommendDAO {
	@Autowired
	SqlSessionTemplate my;
	
	// 검색기록삽입 
	public void insert(RecommendVO revo,FlightVO flightvo, HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession();
		
		
		String arrival = flightvo.getArrival();
		
		revo.setUserid((String) session.getAttribute("userid"));
		revo.setDest(arrival);
		
		
		my.insert("recommend.reco_insert",revo);
	}
	
	//검색 기록 조회 
	 public String SearchCount(RecommendVO revo,FlightVO flightvo, HttpServletRequest req)throws Exception {
		 HttpSession session = req.getSession();
		 
		 String arrival = flightvo.getArrival();
		
		revo.setUserid((String) session.getAttribute("userid"));
		revo.setDest(arrival);
		 String search_count2 = my.selectOne("reco_record",revo);
		 return search_count2;
	 }
	
	//검색 기록 삭제 
	public void delete(RecommendVO revo,FlightVO flightvo, HttpServletRequest req)throws Exception {
		 HttpSession session = req.getSession();
		
		String arrival = flightvo.getArrival();
	
		revo.setUserid((String) session.getAttribute("userid"));
		revo.setDest(arrival);
		my.delete("recommend.reco_delete",revo);
	}
	
	//지역 최댓값 조회 
		public String maxdest(HttpServletRequest req)throws Exception {
			 HttpSession session = req.getSession();
			// String arrival = flightvo.getArrival();
			
			String userid = (String)session.getAttribute("userid");
			//revo.setDest(arrival);
			return my.selectOne("recommend.reco_dest",userid);
			
		}
	
	

}
