package com.flight.booking.air;

import java.util.ArrayList;
import java.util.Collections;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.stereotype.Service;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

@Service
public class FlightCrawlingService {

	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "C:\\Users\\Yunje\\eclipse-workspace\\Flight_Booking2\\src\\main\\resources\\chromedriver.exe";
	
	public ArrayList<FlightListVO> crawling(FlightVO vo) {
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
		System.out.println(departure+" 그리고 "+arrival);
		/* date 형식 변환  (ex 2023-01-01 -> 2023-1-1) */
		String year = "";
		String month = "";
		String date = "";
		
		String[] array = originAirdate.split("-");	// "-" 기준으로 문자열 잘라서 배열에 넣기
		// 배열 첫번째 값은 year, 두번째 값은 month, 세번째 값은 date
		year = array[0];	
		if(array[1].charAt(0) == '0') {		// month가 0으로 시작하면
			month = array[1].substring(1);	// 0 지우고 넣기
		} else {
			month = array[1];
		}
		if(array[2].charAt(0) == '0') {		// date가 0으로 시작하면
			date = array[2].substring(1);	// 0 지우고 넣기
		} else {
			date = array[2];
		}
		String airdate = year + "-" + month + "-" + date;
		
		// url에 값 넣어주기
		url ="http://tour.tmon.co.kr/flight/domestic/result?trip=OW&sch=" + departure + "_" + arrival + "_" + airdate + "&ps=" + adult + "-" + child + "-" + baby + "&seat=D";

		ArrayList<FlightListVO> flightList = new ArrayList<FlightListVO>();	// 항공권 리스트
		
		
		try {
			driver.get(url);
 
			Thread.sleep(5000);
 
			String airline_crawl = "";
			String price_crawl = "";
			String tour_crawl = "";
			String depTime_crawl = "";
			String arrTime_crawl = "";
			
			for(int i=1; i<31; i++) {
				Thread.sleep(200);
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
				arrTime_crawl = element.getText();
				
				// 항공사, 가격 출력
				System.out.println("항공사는 [" + airline_crawl + "]입니다.");
				System.out.println("최저가는 [" + price_crawl + "]입니다.");
				System.out.println("최저가는 [" + tour_crawl + "]입니다.");
				System.out.println("출발시간은 [" + depTime_crawl + "]입니다.");
				System.out.println("도착시간은 [" + arrTime_crawl + "]입니다.");
				
				
				FlightListVO vo2 = new FlightListVO();
				vo2.setAirline(airline_crawl);
				vo2.setPrice(Integer.parseInt(price_crawl.replace(",", "")));
				vo2.setTour(tour_crawl);
				vo2.setDepTime(depTime_crawl);
				vo2.setArrTime(arrTime_crawl);
				
				flightList.add(vo2);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
		// FlightListVO setting
	
		
		// arraylist에 추가
		return flightList;
	}
}