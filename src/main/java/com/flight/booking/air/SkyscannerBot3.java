package com.flight.booking.air;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;


public class skyscannerBot3 {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver";
	public skyscannerBot3() {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
 
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
 
		driver = new ChromeDriver(options);
 
		url ="http://tour.tmon.co.kr/flight/domestic/result?trip=OW&sch=%EB%B6%80%EC%82%B0_PUS_%EA%B9%80%ED%8F%AC_GMP_2023-1-17&ps=1-0-0&seat=D";
		//                                                                                출발지                   목적지     날짜     성인 소아 유아 좌석  
		
		
	}
	public void activateBot() {
		try {
			driver.get(url);
 
			Thread.sleep(2000);
 
			// 곡 제목 파싱
		element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[1]/td[1]/span"));
		//String title = element.getAttribute("title");
		String title = element.getText();
 
			// 좋아요 수 파싱
			element = driver.findElement(By.xpath("/html/body/div[2]/div/div[2]/div/div[1]/div/div[1]/div[3]/div[2]/table/tbody/tr[1]/td[6]/label/span"));
		String cntLike = element.getText();
			
			System.out.println("항공사는 [" + title + "]입니다.");
			System.out.println("최저가는 [" + cntLike + "]입니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
	}
 
	public static void main(String[] args) {
		skyscannerBot3 bot1 = new skyscannerBot3();
		bot1.activateBot();
	}
}