package com.flight.booking.air;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.booking.tour.UserVO;

@Controller
public class FlightController {
	
	@Autowired
	FlightCrawlingService crawlService;
	
	@Autowired
	FlightChangeService changeService; //가격변동 추이
	
	@Autowired
	RecommendDAO recoDao;
	
	@RequestMapping("air/crawling_flight")
	public void flight_list(FlightVO vo, Model model,RecommendVO revo, HttpServletRequest req) {
		// Service에서 크롤링한 결과 값 받아오기
		ArrayList<FlightListVO> totalList = crawlService.crawling(vo);
		ArrayList<FlightVO> searchList = new ArrayList<FlightVO>();
		searchList.add(vo);
		
		ArrayList<Integer> changeList = changeService.pricechange(vo); // 가격변동추이
		
		// model에 추가
		model.addAttribute("sortDepart", totalList.get(0));// flightlistvo
		model.addAttribute("sortPrice", totalList.get(1));// flightlistvo
		model.addAttribute("airbusanList", totalList.get(2));// 에어부산
		model.addAttribute("asianaList", totalList.get(3));// 아시아나
		model.addAttribute("koreanairList", totalList.get(4));// 대한항공 
		model.addAttribute("jinairList", totalList.get(5));// 진에어
		model.addAttribute("jejuairList", totalList.get(6));// 제주항공
		
	                                
		
		model.addAttribute("searchList", searchList);// 검색 리스트
		model.addAttribute("changeList",changeList); // 가격변동추이
		
		
		
		
		
		//실시간 검색구역
		try {
			if (req != null) {
			recoDao.insert(revo,vo, req);
			String search_count2 = recoDao.SearchCount(revo,vo,req); // 해당 id의 count 가져옴 
			int search_count = Integer.parseInt(search_count2); // 정수형으로 변환
			if(search_count >10) {// 검색기록이 10개가 넘으면
				recoDao.delete(revo,vo,req); // 가장 나중에 했던 검색기록 삭제
			}
			RecommendVO result = recoDao.maxdest(revo, vo, req); // 아이디별 가장 많이 검색한 지역
			String username= revo.getUserid();
			System.out.println(username);
			
			model.addAttribute("dest",result); //모델로 넘기기
			model.addAttribute("username",username);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 검색 지역 삽입
	
		
}
}