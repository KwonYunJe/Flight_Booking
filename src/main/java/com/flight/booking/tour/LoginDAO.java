package com.flight.booking.tour;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginDAO {

	@Autowired
	SqlSessionTemplate my;

	public UserVO login(UserVO vo) {
		return my.selectOne("userMap.login", vo);
	}

}
