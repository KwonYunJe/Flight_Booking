package com.flight.booking.air;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;

@Controller
public class skyscannerBot2 {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "D:\\study\\algorithm_study\\Flight_Booking\\Flight_Booking\\Flight_Booking\\src\\main\\resources\\chromedriver.exe";
	
	@RequestMapping("air/test")
	public void skyscannerBot2(BookingVO vo, Model model) {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
 
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
 
		driver = new ChromeDriver(options);
		
		String departure = vo.getDeparture();
		String arrival = vo.getArrival();
		String airdate = vo.getAirdate();
		int adult = vo.getAdult();
		int child = vo.getChild();
		int baby = vo.getBaby();
				
	
//		String departure = request.getParameter("departure"); //웹에서 전달받은 값
//		String arrival = request.getParameter("arrival"); //웹에서 전달받은 값
//		String airdate = request.getParameter("airdate"); //웹에서 전달받은 값
//		String adult = request.getParameter("adult"); //웹에서 전달받은 값
//		String child = request.getParameter("child"); //웹에서 전달받은 값
//		String baby = request.getParameter("baby"); //웹에서 전달받은 값
		
		System.out.println("출발지 : "+departure+" 도착지 : "+ arrival + " 날짜 : "+ airdate+ " 성인 "+adult+"명 소아 "+child+"명 유아 "+baby+"명");
		
		
		url ="http://tour.tmon.co.kr/flight/domestic/result?trip=OW&sch=%EB%B6%80%EC%82%"+departure+"_%EA%B9%80%ED%8F%"+arrival+"_"+airdate+"&ps="+adult+"-"+child+"-"+baby+"&seat=D";
		 ArrayList<String> airline = new ArrayList<String>(); //항공사 리스트
		 ArrayList<String> price = new ArrayList<String>(); //최저가 리스트 
		
//		List<String> airline = new ArrayList();
//		List<String> price = new ArrayList();
		try {
			driver.get(url);
 
			Thread.sleep(2000);
 
			// 곡 제목 파싱
			
			
			 for (int i = 1; i < 11; i++) {
				 element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr["+i+"]/td[1]/span"));
				 String title = element.getText();
				 element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr["+i+"]/td[6]/label/span"));
				String cntLike = element.getText();
				System.out.println("항공사는 [" + title + "]입니다.");
				System.out.println("최저가는 [" + cntLike + "]입니다.");
				airline.add(title);
				//airline.add(cntLike);
				price.add(cntLike);
			 }
		//String title = element.getAttribute("title");
		
 		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
		
		model.addAttribute("airline",airline);
		model.addAttribute("price",price);
		model.addAttribute("departure", departure);
		model.addAttribute("arrival", arrival);
		model.addAttribute("airdate", airdate);
		model.addAttribute("adult", adult);
		model.addAttribute("child", child);
		model.addAttribute("baby", baby);
		
		
		
	}
	

}