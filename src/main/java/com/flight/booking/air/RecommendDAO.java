package com.flight.booking.air;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RecommendDAO {
	@Autowired
	SqlSessionTemplate my;
	
	// 검색기록삽입 
	public void insert(RecommendVO vo) {
		my.insert("recommend.reco_insert",vo);
	}
	//검색 기록 삭제 
	public void delete() {
		my.delete("recommend.reco_delete");
	}

}
