package com.flight.booking.air;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecommendController {
	@Autowired
	RecommendDAO dao;
	
	@RequestMapping("air/recommend_insert")
	public void insert_recomment(RecommendVO vo) {
		dao.insert(vo);
	}
	
	@RequestMapping("air/recommend_delete")
	public void delete_recomment() {
		dao.delete();	
	}

}
