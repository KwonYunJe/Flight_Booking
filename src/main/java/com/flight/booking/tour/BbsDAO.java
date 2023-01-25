package com.flight.booking.tour;

import java.util.ArrayList;
import java.util.HashMap;
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
	
	public List<BbsVO> bbsAll(String area) {
		return my.selectList("bbsMap.bbsAll", area);
	}
	
	public List<BbsVO> paging(Criteria cri) {
		return my.selectList("bbsMap.getListPaging", cri);
	}
	
	public int getTotal() {
		return my.selectOne("bbsMap.getTotal");
	}
	
	public List<BbsVO> userBbs(String userid){		//유저 프로필에 보여질 게시글
		return my.selectList("bbsMap.userBBS", userid);
	}
	
	public List<BbsVO> searchAllArea(String[] searchArray){		//유저가 모든지역의 게시글 검색
		HashMap hm = new HashMap();
		hm.put("sArr", searchArray);
		System.out.println("DAO에서 배열 검사 : " + searchArray[0]);
		return my.selectList("bbsMap.searchAllArea", hm);
	}
}
