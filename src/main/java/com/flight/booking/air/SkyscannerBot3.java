package com.flight.booking.air;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SkyscannerBot3 {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "C:\\Flight_Booking\\src\\main\\resources\\chromedriver.exe";
	
	@RequestMapping("air/navercrawl")
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
		String airdate = vo.getAirdate();
		String adult = vo.getAdult();
		
		String date = airdate.replace("-", "");
		
		// url에 값 넣어주기
		url ="https://flight.naver.com/flights/domestic/" + departure + "-" + arrival + "-" + date + "?adult=1&fareType=YC";

		ArrayList<String> airline = new ArrayList<String>(); // 항공사 리스트
		ArrayList<String> price = new ArrayList<String>(); // 최저가 리스트 
		ArrayList<String> dep = new ArrayList<String>(); // 출발시간 리스트
		ArrayList<String> des = new ArrayList<String>(); // 도착시간 리스트
		
		try {
			driver.get(url);
 
			Thread.sleep(2000);
 
			String airline_crawl = "";
			String price_crawl = "";
			String depTime_crawl = "";
			String desTime_crawl = "";
			
			for(int i=2; i<12; i++) {
				// 항공사 크롤링
				element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[" + i + "]/div/div[1]/div/div[1]/div[1]"));
				airline_crawl = element.getText();
				
				// 가격 크롤링
				element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[" + i + "]/div/div[2]/div[1]/b/i"));
				price_crawl = element.getText();

				// 출발 시간 크롤링
				element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[" + i + "]/div/div[1]/div/div[2]/span[1]/b"));
				depTime_crawl = element.getText();

				// 도착 시간 크롤링
				element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[" + i + "]/div/div[1]/div/div[2]/span[2]/b"));
				desTime_crawl = element.getText();
				// 항공사, 가격 출력
				System.out.println("항공사는 [" + airline_crawl + "]입니다.");
				System.out.println("최저가는 [" + price_crawl + "]입니다.");
				System.out.println("출발시간은 [" + depTime_crawl + "]입니다.");
				System.out.println("도착시간은 [" + desTime_crawl + "]입니다.");
				
				// arraylist에 추가
				airline.add(airline_crawl);
				price.add(price_crawl);
				dep.add(depTime_crawl);
				des.add(desTime_crawl);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
		
		// model에 추가
		model.addAttribute("airline",airline);
		model.addAttribute("price",price);
		model.addAttribute("departure", dep);
		model.addAttribute("destination", des);
	}
}