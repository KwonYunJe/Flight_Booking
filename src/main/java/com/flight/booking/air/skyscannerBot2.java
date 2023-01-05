package com.flight.booking.air;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.*;
@Controller
public class skyscannerBot2 {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "D:\\study\\algorithm_study\\Flight_Booking\\Flight_Booking\\Flight_Booking\\src\\main\\resources\\chromedriver.exe";
	
	@RequestMapping("air/change")
	public void skyscannerBot2(FlightVO vo, Model model) {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
 
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
 
		driver = new ChromeDriver(options);
		ArrayList<Integer> lowest = new ArrayList<Integer>(); // 최저가 리스트
		
		
		String departure = vo.getDeparture(); //출발지 데이터 가져옴
		String arrival = vo.getArrival(); // 도착지 데이터 가져옴 
		url ="https://www.google.com/travel/flights/search?tfs=CBwQAhoeagcIARID"+departure+"EgoyMDIzLTAxLTI0cgcIARID"+arrival+"cAGCAQsI____________AUABSAGYAQI";
		
		
		try {
			driver.get(url);
			
			Thread.sleep(3000);
			
			WebElement webelement = driver.findElement(By.xpath("/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div/div[1]/div/input"));
			webelement.click(); // 달력 클릭
			
			
			for(int i = 1; i <6; i++) {	
				Thread.sleep(3000);
				for(int j = 1; j<8; j++) { // 해당 월 최저가 가져옴 
					element = driver.findElement(By.xpath("/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div[3]/div["+i+"]/div["+j+"]/div/div[2]"));
					String prices = element.getText();
					prices = prices.replace("₩", ""); //필터링들
					prices = prices.replace(".", "");
					prices = prices.replace("만", "00");
					if (prices.length() == 4) {
						prices= prices + "00";
					}
					if (prices.equals("")) { //값이 비어있으면 0으로 지정
						prices= "0";
					}
					int lowprices = Integer.parseInt(prices);
					lowest.add(lowprices);
					if(lowest.size() >= 31) { // 1월기준 31일까지 반복
						break;
					}
				}
				int totalElements = lowest.size();// arrayList의 요소의 갯수를 구한다.
				  for (int index = 0; index < totalElements; index++) {
				   System.out.println(lowest.get(index));
				  }
				
					
				//31일 /html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div[3]/div[5]/div[3]/div[2]/div[2]
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 finally {
			driver.close();
		}
		//모델에 추가
		model.addAttribute("departure",departure);
		model.addAttribute("arrival",arrival);
		model.addAttribute("lowest",lowest);
	}
}