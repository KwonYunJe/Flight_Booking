package com.flight.booking.tour;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class UserDAO {
	@Autowired
    SqlSessionTemplate my; 
	
	public void create(UserVO vo) {
		my.insert("userMap.userCreate", vo);
	}
	public UserVO idcheck(UserVO vo) {
		System.out.println("DAO 작동");
		return my.selectOne("userMap.idCheck", vo);
	}
	public UserVO nickcheck(UserVO vo) {
		System.out.println("DAO 작동");
		return my.selectOne("userMap.nickCheck", vo);
	}
	
}
