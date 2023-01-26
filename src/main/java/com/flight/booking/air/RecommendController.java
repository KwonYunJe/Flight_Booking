package com.flight.booking.air;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.flight.booking.tour.UserVO;
@Controller
public class RecommendController {
	@Autowired
	RecommendDAO dao;
	
	@RequestMapping(value="air/recommend",produces="application/text; charset=utf8")
	public @ResponseBody String recommend(HttpServletRequest req) {
		
		try {
			 String maxdest = dao.maxdest(req);
			 switch (maxdest) {
				case "부산_PUS":
					maxdest = "부산";
					break;
				case "제주_CJU":
					maxdest = "제주";
					break;
				case "인천_ICN":
					maxdest = "인천";
					break;
				case "김포_GMP":
				case "서울+(인천/김포)_SEL":
					maxdest = "서울";
					break;
				case "대구_TAE":
					maxdest = "대구";
					break;
				case "광주_KWJ":
					maxdest = "광주";
					break;
				case "청주_CJJ":
					maxdest = "청주";
					break;
				case "울산_USN":
					maxdest = "울산";
					break;
				case "양양_YNY":
					maxdest = "양양";
					break;
				case "여수_RSU":
					maxdest = "여수";
					break;
				case "원주_WJU":
					maxdest = "원주";
					break;
				case "군산_PUS":
					maxdest = "군산";
					break;
				case "포항_PUS":
					maxdest = "포항";
					break;
				case "사천_HIN":
					maxdest = "사천";
					break;
				}
			
			return maxdest;
			
			//return dao.maxdest(req);
			
		}
		
		catch(NullPointerException e){ // 널포인트
			//e.printStackTrace();
			System.out.println("널 입니다");
			return "없음";
		}
		
		catch(Exception e){
			//e.printStackTrace();
			System.out.println(e);
			return "";
		}
		
	}
	
}