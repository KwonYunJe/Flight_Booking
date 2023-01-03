package com.flight.booking.tour;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReplyDAO {
	
	@Autowired
    SqlSessionTemplate my; 
	
	public void create(ReplyVO vo) {
		my.insert("tour.userCreate", vo);
	}
}
