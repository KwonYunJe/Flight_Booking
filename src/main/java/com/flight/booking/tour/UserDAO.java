package com.flight.booking.tour;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(UserVO bag) {
		System.out.println("전달받은 값 :" + bag.getUserid());
		System.out.println("전달받은 값 :" + bag.getPassword());
		my.insert("user.insert", bag);
	}
	
	public void delete(UserVO bag) {
		System.out.println("삭제 되는 값 :" + bag.getUserid());
		my.delete("user.delete", bag);
	}
}
