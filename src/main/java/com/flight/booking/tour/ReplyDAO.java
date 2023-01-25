package com.flight.booking.tour;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReplyDAO implements ReplyDAOInter {
	
	@Autowired
    SqlSessionTemplate my; 
	
	@Override
	public void create(ReplyVO vo) {
		System.out.println("댓글작성 완료");
		my.insert("replyMap.reCreate", vo);
	}
	
	@Override
	public List<ReplyVO> replyList(int oneKey){
		return my.selectList("replyMap.reList", oneKey);
	}
	
	@Override
	public void bbsReDel(int bbsnum) {
		my.delete("replyMap.bbsReDel", bbsnum);
	}
}
