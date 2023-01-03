package com.flight.booking.tour;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class TourController {
	@Autowired
	UserDAO uDao;
	
	@Autowired
	BbsDAO bDao;
	
	@Autowired
	ReplyDAO rDao;
	
	@Autowired
	LoginDAO lDao;
	
	@RequestMapping("tour/userCreate")
	public String userCreate(UserVO vo) throws Exception{
		System.out.println("회원가입 제어 요청됨.");
		//1. 입력한 값 받아오기 
		//2. vo만들어서 넣기.
		System.out.println(vo);
		//3. dao한테 vo주면서 create호출(요청)
		uDao.create(vo);
		
		return "/tour/success";
	}
	@RequestMapping("tour/bbsInsert")
	public String bbsInsert(BbsVO vo) throws Exception{
		System.out.println("게시판 생성 요청됨");
		System.out.println("요청된 게시글 정보 : " + vo);
		bDao.bbsInsert(vo);
		
		return "/tour/success";
	}
	@RequestMapping("tour/bbsDelete")
	public String bbsDelete(int delKey) throws Exception{
		System.out.println("게시판 삭제 요청됨");
		System.out.println("요청된 게시글 ID : " + delKey);
		bDao.bbsDelete(delKey);
		
		return "success";
	}
	@RequestMapping("tour/bbsOne")
	public String bbsOne(int oneKey, Model model, BbsVO vo) throws Exception {
		System.out.println("게시판 검색 요청됨");
		System.out.println("요청된 검색 키 : " + oneKey);
		bDao.bbsOne(oneKey);
		model.addAttribute("one", vo);
		
		return "/tour/success";
	}
	
	@RequestMapping("tour/bbsAll")
	public String bbsAll(Model model) {
		List<BbsVO> list = bDao.bbsAll();
		System.out.println(list.size());
		model.addAttribute("list", list);
		
		return "/tour/success";
	}
	
	@RequestMapping("tour/login")
	public String userLogin(UserVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		
		HttpSession session = req.getSession();
		
		System.out.println(vo.getUserid() + " " + vo.getPassword());
		System.out.println("---------------------------------------");
		UserVO uvo = lDao.login(vo);
		System.out.println(uvo);
		
		if(uvo == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
            System.out.println(uvo);
            return "/tour/fail";
        } else {
            session.setAttribute("member", uvo);
            System.out.println(uvo);
            return "/tour/success";
            
        }
		
	}
}
