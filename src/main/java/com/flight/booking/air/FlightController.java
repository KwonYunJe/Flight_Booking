package com.flight.booking.air;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FlightController {
	
	@Autowired
	FlightCrawlingService crawlService;
	
	@Autowired
	FlightChangeService changeService; //가격변동 추이
	
	@RequestMapping("air/crawling_flight")
	public void flight_list(FlightVO vo, Model model) {
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
	}
	
	
	
	
}