package com.flight.booking.tour;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class BbsDAO {
	@Autowired
	SqlSessionTemplate my;

	public void bbsDelete(int delKey) {
		my.delete("bbsMap.bbsDelete", delKey);
	}
	
	public void bbsInsert(BbsVO vo) {
		my.insert("bbsMap.bbsCreate", vo);
	}
	
	public BbsVO bbsOne(int oneKey) {
		return my.selectOne("bbsMap.bbsOne",oneKey);
	}
	
	public List<BbsVO> bbsAll() {
		return my.selectList("bbsMap.bbsAll");
	}
	
	public List<BbsVO> paging(Criteria cri) {
		return my.selectList("bbsMap.getListPaging", cri);
	}
	
	public int getTotal() {
		return my.selectOne("bbsMap.getTotal");
	}
}
