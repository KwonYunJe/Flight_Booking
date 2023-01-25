package com.flight.booking.air;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;

@Component
public class RankingDAO {
	
	@Autowired
	MongoTemplate mongo;
	
	// 지역 검색 순위 리스트 가져오기(map reduce한 값)
	public List<RankingVO> list() {
		Query query = new Query();
		query.with(new Sort(Sort.Direction.DESC, "value"));
		return mongo.find(query, RankingVO.class, "ranking_map_reduce");
	}
	
	// 지역 검색 값 DB에 저장
	public void insert(SearchAreaVO vo) {
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(formatter.format(date));
		vo.setDate(formatter.format(date));
		System.out.println(vo);
		mongo.insert(vo, "search_ranking");
	}
}
