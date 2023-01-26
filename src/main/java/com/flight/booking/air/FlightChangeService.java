package com.flight.booking.air;
import java.util.ArrayList;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.stereotype.Service;
@Service
public class FlightChangeService {
	private WebDriver driver;
	private WebElement element;
	private String url;
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver";
	public ArrayList<Integer> pricechange(FlightVO vo) {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
		driver = new ChromeDriver(options);
		ArrayList<Integer> lowest = new ArrayList<Integer>(); // 최저가 리스트
		// 입력 값 가져오기
		String departure = vo.getDeparture(); // 출발지
		String arrival = vo.getArrival(); // 데이터
		String airdate = vo.getAirdate(); // 출발날짜
		String airmonth = airdate.substring(5, 7); // 월 가져옴
		int airmonth2 = Integer.parseInt(airmonth); // 정수형 변환
		String airday = airdate.substring(airdate.length() - 2, airdate.length()); // 일만 가져옴
		int airday2 = Integer.parseInt(airday); // 정수형 변환
		int week = (airday2 / 7) + 1; // 주 계산
		int days = airday2 % 7; // 일 계산
		switch (departure) {
		case "부산_PUS":
			departure = "UFVT";
			break;
		case "제주_CJU":
			departure = "Q0pV";
			break;
		case "인천_ICN":
			departure = "SUNO";
			break;
		case "김포_GMP":
		case "서울+(인천/김포)_SEL":
			departure = "R01Q";
			break;
		case "대구_TAE":
			departure = "VEFF";
			break;
		case "광주_KWJ":
			departure = "S1dK";
			break;
		case "청주_CJJ":
			departure = "Q0pK";
			break;
		case "울산_USN":
			departure = "VVNO";
			break;
		case "양양_YNY":
			departure = "WU5Z";
			break;
		case "여수_RSU":
			departure = "UINV";
			break;
		case "원주_WJU":
			departure = "V0pV";
			break;
		case "군산_PUS":
			departure = "S1VW";
			break;
		case "포항_PUS":
			departure = "S1BP";
			break;
		case "사천_HIN":
			departure = "SElO";
			break;
		}
		switch (arrival) {
		case "부산_PUS":
			arrival = "UFVT";
			break;
		case "제주_CJU":
			arrival = "Q0pV";
			break;
		case "인천_ICN":
			arrival = "SUNO";
			break;
		case "김포_GMP":
		case "서울+(인천/김포)_SEL":
			arrival = "R01Q";
			break;
		case "대구_TAE":
			arrival = "VEFF";
			break;
		case "광주_KWJ":
			arrival = "S1dK";
			break;
		case "청주_CJJ":
			arrival = "Q0pK";
			break;
		case "울산_USN":
			arrival = "VVNO";
			break;
		case "양양_YNY":
			arrival = "WU5Z";
			break;
		case "여수_RSU":
			arrival = "UINV";
			break;
		case "원주_WJU":
			arrival = "V0pV";
			break;
		case "군산_PUS":
			arrival = "S1VW";
			break;
		case "포항_PUS":
			arrival = "S1BP";
			break;
		case "사천_HIN":
			arrival = "SElO";
			break;
		}
		url = "https://www.google.com/travel/flights/search?tfs=CBwQAhoeagcIARID" + departure
				+ "EgoyMDIzLTAxLTMxcgcIARID" + arrival + "cAGCAQsI____________AUABSAGYAQI";
		try {
			driver.get(url);
			// 스레드 중지
			Thread.sleep(15000);
			// 달력펼치는 xpath 경로
			WebElement webelement = driver.findElement(By.xpath(
					"/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div/div[1]/div/input"));
			webelement.click(); // 달력 클릭
			Thread.sleep(5000);
			
		
			// 6주만큼반복
			for(int i = 1; i <6; i++) {	
				Thread.sleep(500);
				// 7일만큼 반복	
					
				for(int j = 1; j<8; j++) { // 해당 월 최저가 가져옴
					if (airmonth2 == 2 && i == 1) { //2월 첫째 주 확인
						if(j == 1) { //2월 1일
							element = driver.findElement(By.xpath("/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div[2]/div[3]/div[1]/div[1]/div[2]/div[2]"));
							String prices = element.getText();
							prices = prices.replace("₩", ""); //필터링들
							prices = prices.replace(".", "");
							prices = prices.replace("만", "00");
							
							if (prices.equals("")) { //값이 비어있으면 0으로 지정
								prices= "0";
							}
							int lowprices = Integer.parseInt(prices);
							if (lowprices <10000) {
								lowprices = lowprices * 10;
							}
							if (lowprices >200000) {
								lowprices = lowprices / 10;
							}
							lowest.add(lowprices);				
						}
						else { //2월 2, 3, 4일
							if(j <=4) {
							element = driver.findElement(By.xpath("/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div["+airmonth2+"]/div[3]/div["+i+"]/div["+j+"]/div/div[2]"));
							String prices = element.getText();
							prices = prices.replace("₩", ""); //필터링들
							prices = prices.replace(".", "");
							prices = prices.replace("만", "00");
							
							if (prices.equals("")) { //값이 비어있으면 0으로 지정
								prices= "0";
							}
							int lowprices = Integer.parseInt(prices);
							if (lowprices <10000) {
								lowprices = lowprices * 10;
							}
							if (lowprices >200000) {
								lowprices = lowprices / 10;
							}
							lowest.add(lowprices);
							}
							
						}
					}
					
					else { //2월 둘째주이후 or 1월
					element = driver.findElement(By.xpath("/html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div["+airmonth2+"]/div[3]/div["+i+"]/div["+j+"]/div/div[2]"));
					String prices = element.getText();
					prices = prices.replace("₩", ""); //필터링들
					prices = prices.replace(".", "");
					prices = prices.replace("만", "00");
					
					if (prices.equals("")) { //값이 비어있으면 0으로 지정
						prices= "0";
					}
					int lowprices = Integer.parseInt(prices);
					if (lowprices <10000) {
						lowprices = lowprices * 10;
					}
					if (lowprices >200000) {
						lowprices = lowprices / 10;
					}
					lowest.add(lowprices);
					
					
					if(airmonth2 ==1 && lowest.size() >= 31) { // 1월기준 31일까지 반복
						break;
						}
					else if(airmonth2 ==2 && lowest.size()>=28) { //2월 기준 28일까지 반복
						break;
					}
					
					}
				}//for문 i
				int totalElements = lowest.size();// arrayList의 요소의 갯수를 구한다.
				  for (int index = 0; index < totalElements; index++) {
				   System.out.println(lowest.get(index));
				  }
				
					
				//31일 /html/body/c-wiz[2]/div/div[2]/c-wiz/div[1]/c-wiz/div[2]/div[1]/div/div[2]/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div/div[1]/div/div/div[1]/div[3]/div[5]/div[3]/div[2]/div[2]
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
		return lowest;
	}
}