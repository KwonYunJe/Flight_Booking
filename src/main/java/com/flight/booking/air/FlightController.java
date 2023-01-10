package com.flight.booking.air;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FlightController {
	
	@Autowired
	private FlightCrawlingService crawlService;
	
	@RequestMapping("air/crawling_flight")
	public void flight_list(FlightVO vo, Model model) {
		// Service에서 크롤링한 결과 값 받아오기
		ArrayList<FlightListVO> totalList = crawlService.crawling(vo);
		ArrayList<FlightVO> searchList = new ArrayList<FlightVO>();
		searchList.add(vo);

		// model에 추가
		model.addAttribute("searchList", searchList);
		model.addAttribute("sortDepart", totalList.get(0));
		model.addAttribute("sortPrice", totalList.get(1));

	}
}