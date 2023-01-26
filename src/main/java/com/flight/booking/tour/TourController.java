package com.flight.booking.tour;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.Session;

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
	public String bbsInsert(BbsVO vo, HttpServletRequest req){
		System.out.println("게시판 생성 요청됨");
		System.out.println("요청된 게시글 정보 : " + vo);
		HttpSession session = req.getSession();
		vo.setUserId((String) session.getAttribute("member"));
		bDao.bbsInsert(vo);
		
		return "/tour/bbs_success";
	}
	
	@RequestMapping("tour/bbsDelete")
	public String bbsDelete(int delKey) {
		System.out.println("게시판 삭제 요청됨");
		System.out.println("요청된 게시글 ID : " + delKey);
		bDao.bbsDelete(delKey);

		return "/tour/BBSDelSuccess";
	}
	@RequestMapping("tour/bbsOne")
	public String bbsOne(int oneKey, Model model, BbsVO vo, ReplyVO rVo) {
		try {
			System.out.println("게시판 검색 요청됨");
			System.out.println("요청된 검색 키 : " + oneKey);
			vo = bDao.bbsOne(oneKey);
			
			System.out.println("댓글 열람 요청됨");
			List<ReplyVO> replyList = rDao.replyList(oneKey);
			model.addAttribute("one", vo);
			model.addAttribute("rList", replyList);
			
			return "/tour/bbsView";
		}
		catch(Exception e) {
			System.out.println("오류발생 : " + e);
			model.addAttribute("error", e);
			return "/tour/error";
		}
	}
	
	@RequestMapping("tour/BbsEdit")
	public String bbsEdit(int oneKey, Model model, BbsVO vo) {
		try {
			System.out.println("게시판 수정 요청됨");
			System.out.println("요청된 검색 키 : " + oneKey);
			vo = bDao.bbsOne(oneKey);
			
			model.addAttribute("one", vo);
			
			return "/tour/BbsEdit";
		}
		catch(Exception e) {
			System.out.println("오류발생 : " + e);
			model.addAttribute("error", e);
			return "/tour/error";
		}
	}
	
	@RequestMapping("tour/bbsUpdate")
	public String bbsUpdate(BbsVO vo, HttpServletRequest req){
		System.out.println("게시판 업데이트 요청됨");
		System.out.println("요청된 게시글 정보 : " + vo);
		HttpSession session = req.getSession();
		vo.setUserId((String) session.getAttribute("member"));
		bDao.bbsUpdate(vo);
		
		return "/tour/bbs_success";
	}
	
	
	@RequestMapping("tour/bbsAll")
	public @ResponseBody List bbsAll(Model model, String area) {
		List<BbsVO> list = bDao.bbsAll(area);
		System.out.println(list.size());
		model.addAttribute("list", list);
		
		return list;
	}
	
	@RequestMapping("tour/login")
	public String userLogin(UserVO vo, HttpServletRequest req, RedirectAttributes rttr){
		
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
            System.out.println(uvo.getUserid());
            session.setAttribute("userid", uvo.getUserid());
            System.out.println(uvo);
            session.setAttribute("buying", uvo.getBuying());
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
		try {
			System.out.println(cri);
			int total = bDao.getTotal();
			PageMoveDTO pageMove = new PageMoveDTO(cri, total);
			model.addAttribute("list", bDao.paging(cri));
			model.addAttribute("clist", cri);
			model.addAttribute("pageMove", pageMove);
		}
		catch(NullPointerException ne){
			System.out.println("오류 발생 : " + ne);
			model.addAttribute("list", "NullList");
		}
	}
	@RequestMapping("tour/searchBBS")
	public String searchBbs(BbsVO vo, String searchType, String searchValue, Model model, Criteria cri) {
		try {
			System.out.println("게시판 검색 요청됨");
			System.out.println("요청된 지역 : "+searchType);
			System.out.println("요청된 검색어 : "+searchValue);
			
			String[] searchArray = searchValue.split("\\s");																		//검색된 문장에서 띄어쓰기를 기준으로 문자열을 각각 배열에 저장
			System.out.println("검색어 배열" + searchArray[0]);
			
			if(searchType.equals("none")) {																								//지역이 설정되지 않고 검색되면 모든 게시글에서 검색
				List<BbsVO> result = bDao.searchAllArea(searchArray);
				System.out.println("전체지역 검색결과" + result);
				model.addAttribute("searchResult", result);

			}else {																																					//지역이 설정된다면 지역과 게시글을 같이 검색
				List<BbsVO> result = bDao.searchAllArea(searchArray);
				System.out.println("지역검색 리스트 크기 : " + result.size());
				for(int i = (int)result.size() - 1 ; i >= 0; i --) {																						//List에서 하나씩 지우는데 0번부터 시작하면 중복된 번호 처리가 문제될 것 같아서 거꾸로 내려옴
					if( !result.get(i).getArea().equals(searchType) ) {														//List의 해당번째의 area가 검색한 조건과 일치하지 않으면
						result.remove(i);																													//그 값을 List에서 지워라. 
						System.out.println(searchType + "지역별 검색 결과" + result);
						model.addAttribute("searchResult", result);	
					}
				}
			}
			
			return"/tour/bbsSearch";
		}
		catch(NullPointerException e){
			model.addAttribute("searchResult", "NullList");
			return "/tour/bbsSearch";
		}
		
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
	@RequestMapping("tour/deleteReply")
	public String deleteReply(int reid, int bbsnum, Model model) {
		System.out.println("댓글삭제 요청됨 요청된 게시글 ID : " + bbsnum + "요청된 댓글 id : " + reid);
		rDao.replyDel(reid);
		model.addAttribute("bbsnum", bbsnum);
		return "tour/ReDelSuccess";
	}

	@RequestMapping("tour/selectUserId")
	public @ResponseBody UserVO selectUserId(String userid) {
		System.out.println("프로필 데이터 요청됨");
		System.out.println("프로필 요청 된 ID : "+ userid);
		UserVO reciveData = uDao.selectUserInfo(userid); 
		System.out.println("프로필 데이터 가져옴");
		return reciveData;
	}
	
	@RequestMapping("tour/userBbs")
	public @ResponseBody List<BbsVO> userBBS(String userid){
		System.out.println("유저게시글 요청됨");
		System.out.println("요청된 유저 ID : " + userid);
		List<BbsVO> reciveBBS = bDao.userBbs(userid);

		
		return reciveBBS;
	}
	@RequestMapping("tour/userReply")
	public @ResponseBody List<ReplyVO> userREPLY(String userid){
		System.out.println("유저댓글 요청됨");
		System.out.println("요청된 유저ID : " + userid);
		List<ReplyVO> reciveReply = rDao.userReply(userid);
		
		return reciveReply;
	}
	
	@RequestMapping("tour/buying")
	public @ResponseBody String buying(String userid, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		
		System.out.println("티켓 구매 완료됨. 구매유저 ID : " + userid);
		int buyingResult = uDao.buyingUpdate(userid);
		System.out.println("controller결과 : "+Integer.toString(buyingResult));
		
		UserVO uvo = uDao.selectUserInfo(userid);
		
		session.setAttribute("buying", uvo.getBuying());
		
		return Integer.toString(buyingResult);
	}
}
