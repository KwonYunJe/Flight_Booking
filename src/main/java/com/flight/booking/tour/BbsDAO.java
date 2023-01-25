package com.flight.booking.tour;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class BbsDAO implements BbsDAOInter {
	@Autowired
	SqlSessionTemplate my;

	@Override
	public void bbsDelete(int delKey) {
		my.delete("bbsMap.bbsDelete", delKey);
	}
	
	@Override
	public void bbsInsert(BbsVO vo) {
		my.insert("bbsMap.bbsCreate", vo);
	}
	
	@Override
	public BbsVO bbsOne(int oneKey) {
		return my.selectOne("bbsMap.bbsOne",oneKey);
	}
	
	@Override
	public List<BbsVO> bbsAll() {
		return my.selectList("bbsMap.bbsAll");
	}
	
	@Override
	public List<BbsVO> paging(Criteria cri) {
		return my.selectList("bbsMap.getListPaging", cri);
	}
	
	@Override
	public int getTotal() {
		return my.selectOne("bbsMap.getTotal");
	}
	
	public List<BbsVO> searchAllArea(String[] searchArray){		//유저가 모든지역의 게시글 검색
		HashMap hm = new HashMap();
		hm.put("sArr", searchArray);
		System.out.println("DAO에서 배열 검사 : " + searchArray[0]);
		return my.selectList("bbsMap.searchAllArea", hm);
	}
}
