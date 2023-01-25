package com.flight.booking.air;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SkyscannerBot {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver";
	
	@RequestMapping("air/crawl")
	public void skyscannerBot(FlightVO vo, Model model) {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
 
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
 
		driver = new ChromeDriver(options);
 
		// 입력 값 가져오기
		String departure = vo.getDeparture();
		String arrival = vo.getArrival();
		String originAirdate = vo.getAirdate();
		String adult = vo.getAdult();
		String child = vo.getChild();
		String baby = vo.getBaby();
		
		ArrayList<FlightVO> list = new ArrayList<FlightVO>();
		list.add(vo);
		model.addAttribute("list", list);
		
		/* date 형식 변환  (ex 2023-01-01 -> 2023-1-1) */
		String year = "";
		String month = "";
		String date = "";
		
		String[] array = originAirdate.split("-");
		System.out.println(array[0]);
		System.out.println(array[1]);
		System.out.println(array[2]);
		year = array[0];
		System.out.println(array[1].charAt(0));
		if(array[1].charAt(0) == '0') {
			month = array[1].substring(1);
		} else {
			month = array[1];
		}
		if(array[2].charAt(0) == '0') {
			date = array[2].substring(1);
		} else {
			date = array[2];
		}
		String airdate = year + "-" + month + "-" + date;
		System.out.println(airdate);
		// url에 값 넣어주기
		url ="http://tour.tmon.co.kr/flight/domestic/result?trip=OW&sch=" + departure + "_" + arrival + "_" + airdate + "&ps=" + adult + "-" + child + "-" + baby + "&seat=D";

		ArrayList<String> airline = new ArrayList<String>(); // 항공사 리스트
		ArrayList<String> price = new ArrayList<String>(); // 최저가 리스트 
		ArrayList<String> tour = new ArrayList<String>(); // 판매사 리스트 
		ArrayList<String> depTime = new ArrayList<String>(); // 출발시간 리스트
		ArrayList<String> desTime = new ArrayList<String>(); // 도착시간 리스트
		
		try {
			driver.get(url);
 
			Thread.sleep(2000);
 
			String airline_crawl = "";
			String price_crawl = "";
			String tour_crawl = "";
			String depTime_crawl = "";
			String desTime_crawl = "";
			
			for(int i=1; i<11; i++) {
				// 항공사 크롤링
				element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[" + i + "]/td[1]/span"));
				airline_crawl = element.getText();
				
				// 가격 크롤링
				element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[" + i + "]/td[6]/label/span"));
				price_crawl = element.getText();

				// 판매사 크롤링
				element = driver.findElement(By.xpath("/html/body/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[" + i + "]/td[4]"));
				tour_crawl = element.getText();

				// 출발 시간 크롤링
				element = driver.findElement(By.xpath("/html/body/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[" + i + "]/td[2]/span[1]"));
				depTime_crawl = element.getText();

				// 도착 시간 크롤링
				element = driver.findElement(By.xpath("/html/body/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[" + i + "]/td[2]/span[2]"));
				desTime_crawl = element.getText();
				// 항공사, 가격 출력
				System.out.println("항공사는 [" + airline_crawl + "]입니다.");
				System.out.println("최저가는 [" + price_crawl + "]입니다.");
				System.out.println("최저가는 [" + tour_crawl + "]입니다.");
				System.out.println("출발시간은 [" + depTime_crawl + "]입니다.");
				System.out.println("도착시간은 [" + desTime_crawl + "]입니다.");
				
				// arraylist에 추가
				airline.add(airline_crawl);
				price.add(price_crawl);
				tour.add(tour_crawl);
				depTime.add(depTime_crawl);
				desTime.add(desTime_crawl);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
		
		
		// model에 추가
		model.addAttribute("airline",airline);
		model.addAttribute("price",price);
		model.addAttribute("tour",tour);
		model.addAttribute("depTime", depTime);
		model.addAttribute("desTime", desTime);
	}
}