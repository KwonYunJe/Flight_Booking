package com.flight.booking.tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Autowired
	UserDAO dao;
	
	@RequestMapping("tour/insert")
	public void insert(UserVO bag) throws Exception{
		System.out.println("클라이언트 로그인 처리 요청됨.");
		System.out.println("싱글톤 주소(dao)" + dao);
		
		
		dao.insert(bag);
		System.out.println("전달받은 값 :" + bag.getUserid());
		System.out.println("전달받은 값 :" + bag.getPassword());
		
	}
	
	@RequestMapping("tour/delete")
	public void delete(UserVO bag) throws Exception{
		System.out.println("클라이언트 삭제 처리 요청됨.");
		System.out.println("싱글톤 주소(dao)" + dao);
		
		dao.delete(bag);
		
	}
}
