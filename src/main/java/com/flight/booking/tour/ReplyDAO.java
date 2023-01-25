package com.flight.booking.tour;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReplyDAO {
	
	@Autowired
    SqlSessionTemplate my; 
	
	public void create(ReplyVO vo) {
		System.out.println("댓글작성 완료");
		my.insert("replyMap.reCreate", vo);
	}
	
	public List<ReplyVO> replyList(int oneKey){
		return my.selectList("replyMap.reList", oneKey);
	}
	
	public void replyDel(int reid) {
		System.out.println("DAO에서 받은 reid : " + reid);
		if(my.delete("replyMap.reDel", reid)==1) {
			System.out.println("댓글삭제 완료");
		}else {
			System.out.println("오류발생");
		}
	}
	
	public List<ReplyVO> userReply(String userid){
		return my.selectList("replyMap.userReply", userid);
	}
}
