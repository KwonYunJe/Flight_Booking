package com.flight.booking.air;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class melonBot2 {
	 
	private WebDriver driver;
	private WebElement element;
	private String url;
 
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "C:\\Flight_Booking\\src\\main\\resources\\chromedriver.exe";
	public melonBot2() {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
 
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
 
		driver = new ChromeDriver(options);
 
		url = "https://flight.naver.com/flights/domestic/PUS-CJU-20221231?adult=1&fareType=YC";
	}
 
	public void activateBot() {
		try {
			driver.get(url);
 
			Thread.sleep(2000);
 
			// 곡 제목 파싱
			element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[2]/div/div[1]/div/div[1]/div[1]/b"));
			String title = element.getAttribute("i");
			System.out.println(title);
 
			// 좋아요 수 파싱
			element = driver.findElement(By.xpath("/html/body/div[1]/div/div[1]/div[6]/div/div[2]/div[3]/div/div[2]/div[1]/b/i"));
			String cntLike = element.getText();
			
			System.out.println("1위 노래는 [" + title + "]입니다.");
			System.out.println("좋아요 수는 [" + cntLike + "]입니다.");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
 
	public static void main(String[] args) {
		melonBot2 bot1 = new melonBot2();
		bot1.activateBot();
	}
}