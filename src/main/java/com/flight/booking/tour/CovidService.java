package com.flight.booking.tour;

import java.io.BufferedReader;
import java.io.Console;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;


import org.json.XML;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;

import org.json.simple.parser.JSONParser;

@Service
public class CovidService {
	
	public ArrayList covid19(CovidDTO dto) {
		
		String servicekey = "CY1pPI4iM9tQKAH5vfcZqbwWrS8TGOBho";
		String result = "";
		List<String> covidNumList = new ArrayList<String>();

		String menu = "";
		switch (dto.getRegion()) {
		case "울산":
			menu = "ulsan";
			break;
		case "부산":
			menu = "busan";
			break;
		case "대구":
			menu = "daegu";
			break;
		default:
			menu = "챗 봇>>선택한 번호는 없는 메뉴입니다.";
			break;
		}
		try {
			// URI를 URL객체로 저장
			URL url = new URL("https://api.corona-19.kr/korea/beta/" + "?serviceKey=" + servicekey);

			// 버퍼 데이터(응답 메세지)를 읽어서 result에 저장

			BufferedReader bf;

			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

			String line;
			while ((line = bf.readLine()) != null) {
				result = result + line + "\n";
			}

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
			JSONObject base = (JSONObject) jsonObject.get(menu);
			JSONObject time = (JSONObject) jsonObject.get("API");

			covidNumList.add(String.valueOf(base.get("countryNm")));
			covidNumList.add(String.valueOf(base.get("totalCnt")));
			covidNumList.add(String.valueOf(base.get("incDec")));
			covidNumList.add(String.valueOf(base.get("deathCnt")));
			covidNumList.add(String.valueOf(time.get("updateTime")));

		
		} catch (Exception e) {
			e.printStackTrace();
		}
		ArrayList covidList = new ArrayList();
		covidList.add(covidNumList);
		
		return covidList;
	}

}