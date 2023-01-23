package com.flight.booking.tour;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String userCreate(UserVO vo){
		System.out.println("회원가입 제어 요청됨.");
		//1. 입력한 값 받아오기 
		//2. vo만들어서 넣기.
		System.out.println(vo);
		//3. dao한테 vo주면서 create호출(요청)
		uDao.create(vo);
		
		return "/tour/success";
	}
	@RequestMapping("tour/idCheck")
	public @ResponseBody String idCheck(UserVO vo){
		try {
			System.out.println("ID 중복체크 요청됨");
			System.out.println(vo.getUserid());
			UserVO rvo = uDao.idcheck(vo); 
			System.out.println(uDao.idcheck(vo));
			String idCheckVal ="";
			if(rvo == null) {
				idCheckVal = "null";
			}else {
				idCheckVal = vo.getUserid();
			}
			String result = "{\"userid1\" : \"" + idCheckVal + "\"}";
			System.out.println("DB id존재 여부 : " + result);
			return result;
		}
		catch (Exception e) {
			// TODO: handle exception
			String error = "" + e;
			return error;
		}
	}
	@RequestMapping("tour/nickCheck")
	public @ResponseBody String nickCheck(UserVO vo){
		try {
			System.out.println("nickName 중복체크 요청됨");
			System.out.println(vo.getNickname());
			UserVO rvo = uDao.nickcheck(vo); 
			System.out.println(uDao.nickcheck(vo));
			String NickVal ="";
			if(rvo == null) {
				NickVal = "null";
			}else {
				NickVal = rvo.getNickname();
			}
			String result = "{\"nickname1\" : \"" + NickVal + "\"}";
			System.out.println("DB nickname존재 여부 : " + result);
			return result;
		}
		catch (Exception e) {
			// TODO: handle exception
			String error = "" + e;
			return error;
		}
	}
	@RequestMapping("tour/bbsInsert")
	public String bbsInsert(BbsVO vo, HttpServletRequest req) throws Exception{
		System.out.println("게시판 생성 요청됨");
		System.out.println("요청된 게시글 정보 : " + vo);
		HttpSession session = req.getSession();
		vo.setUserId((String) session.getAttribute("member"));
		bDao.bbsInsert(vo);
		
		return "/tour/bbs_success";
	}
	
	@RequestMapping("tour/bbsDelete")
	public String bbsDelete(int delKey) throws Exception {
		rDao.bbsReDel(delKey); // 게시글 삭제 전 게시글 넘버로 검색하여 댓글을 모두 삭제 함
		System.out.println("게시판 삭제 요청됨");
		System.out.println("요청된 게시글 ID : " + delKey);
		bDao.bbsDelete(delKey);

		return "/tour/success";
	}
	@RequestMapping("tour/bbsOne")
	public String bbsOne(int oneKey, Model model, BbsVO vo, ReplyVO rVo) throws Exception {
		System.out.println("게시판 검색 요청됨");
		System.out.println("요청된 검색 키 : " + oneKey);
		vo = bDao.bbsOne(oneKey);
		
		System.out.println("댓글 열람 요청됨");
		List<ReplyVO> replyList = rDao.replyList(oneKey);
		model.addAttribute("one", vo);
		model.addAttribute("rList", replyList);
		
		return "/tour/bbsView";
	}
	
	
	@RequestMapping("tour/bbsAll")
	public @ResponseBody List bbsAll(Model model) {
		List<BbsVO> list = bDao.bbsAll();
		System.out.println(list.size());
		model.addAttribute("list", list);
		
		return list;
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
            session.setAttribute("member", uvo.getNickname());
            session.setAttribute("userId",uvo.getUserid());
            System.out.println(uvo);
            return "/tour/success";
            
        }
	}
	@PostMapping("tour/logout")
	  public String logoutV3(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	      session.invalidate();
	    }
	    return "/tour/success";
	  }
	
	@RequestMapping("tour/bbsList")
	public void boardListGet(Model model, Criteria cri) {
		System.out.println(cri);
		int total = bDao.getTotal();
		PageMoveDTO pageMove = new PageMoveDTO(cri, total);
		model.addAttribute("list", bDao.paging(cri));
		model.addAttribute("clist", cri);
		model.addAttribute("pageMove", pageMove);
	}
	
	@RequestMapping("tour/writeReply")
	public @ResponseBody String writeReply(ReplyVO rVo, Model model) {
		System.out.println("댓글작성 요청됨. 게시글 번호 : " + rVo.getBbsnum());
		System.out.println("댓글 내용" + rVo);
		rDao.create(rVo);
		String success = "tour/success";

		String writeResult = "{\"writeResult\" : \"" + success + "\"}";

		return writeResult;
	}

	@RequestMapping("tour/roadReply")
	public @ResponseBody List writeReply2(ReplyVO vo, Model model, int oneKey) {
		System.out.println("댓글 열람 요청됨");
		System.out.println("요청된 게시글 키" + oneKey);
		List<ReplyVO> replyData = rDao.replyList(oneKey);
		model.addAttribute("replyData", replyData);

		return replyData;
	}
	
	
	
}
