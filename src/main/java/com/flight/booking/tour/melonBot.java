package com.flight.booking.tour;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
public class melonBot {
	
	private WebDriver driver;
	private WebElement element;
	private String url;
	public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver";
	public melonBot() {
		// WebDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		// WebDriver 옵션 설정
		ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-popup-blocking");
		driver = new ChromeDriver(options);
		url = "https://datalab.visitkorea.or.kr/datalab/portal/bda/getMetcoAna.do#";
	}
	public void activateBot() {
		try {
			driver.get(url);
			Thread.sleep(2000);
			// 곡 제목 파싱
			element = driver.findElement(By.xpath("/html/body/div[2]/div[2]/div[6]/div[1]/div[4]/div[1]/div/div[2]/div/div[2]/div/div/svg/g/g[2]/g[1]/g/g[1]/g/g[1]/g/g[3]/g/g/g/g[2]/g/g[14]/g/text/tspan"));
			String title = element.getAttribute("title");
			// 좋아요 수 파싱
			
			
			System.out.println("1위 노래는 [" + title + "]입니다.");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			driver.close();
		}
	}
	public static void main(String[] args) {
		melonBot bot1 = new melonBot();
		bot1.activateBot();
	}
}