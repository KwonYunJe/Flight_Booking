package com.flight.booking.tour;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.Alert;
import org.springframework.stereotype.Service;

@Service
public class VisiService implements VisiServiceInter {

	@Override
	public ArrayList tourlist(CovidDTO dto)  {
		String servicekey = "ULt6lDxaSjElAfIsqiV537%2F5Edn6s%2FpRmlIQOM2FwspqmUqpNXTNU%2FMLTIOCblxRV%2F2VRnTcN96B8VaG%2F%2FZNEA%3D%3D";
		String result = "";

		int[] total = new int[4]; // 4달간 월별 방문객 총인원 (외지인(b) + 외국인(c))

		// 동적시간계산(2달 전으로부터 -4)
		List<String> monthList = new ArrayList<String>();
		for (int i = -5; i <= -2; i++) {
			
			// 포맷팅 정의
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMM");
			Calendar cal1 = Calendar.getInstance();
			cal1.add(cal1.MONTH, i);
			
			// 포맷팅 적용
			String formated1 = formatter.format(cal1.getTime()); // 현재시간 포맷팅
			monthList.add(formated1);
			
		}
		// 동적시간계산 끝

		String menu = "";
		switch (dto.getRegion()) {
		case "울산":
			menu = "울산광역시";
			break;
		case "부산":
			menu = "부산광역시";
			break;
		case "대구":
			menu = "대구광역시";
			break;
		case "서울":
			menu = "서울특별시";
			break;
		case "인천":
			menu = "인천광역시";
			break;
		}
		try {
			// URI를 URL객체로 저장
			URL url = new URL("http://apis.data.go.kr/B551011/DataLabService/metcoRegnVisitrDDList" + "?serviceKey="
					+ servicekey + "&_type=json&numOfRows=999999&MobileOS=ETC&MobileApp=AppTest&startYmd="
					+ monthList.get(0) + "01&endYmd=" + monthList.get(3) + "31");

			// 버퍼 데이터(응답 메세지)를 읽어서 result에 저장

			BufferedReader bf;

			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));

			String line;
			while ((line = bf.readLine()) != null) {
				result = result + line + "\n";
			}

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
			JSONObject response = (JSONObject) jsonObject.get("response");
			JSONObject body = (JSONObject) response.get("body");
			JSONObject items = (JSONObject) body.get("items");
			JSONArray item = (JSONArray) items.get("item");


			for (int i = 0; i < item.size(); i++) {
				JSONObject jsonObj = (JSONObject) item.get(i);
				String areaNm = (String) jsonObj.get("areaNm");
				String touDivNm = (String) jsonObj.get("touDivNm");
				String baseYmd = (String) jsonObj.get("baseYmd");
				
				
				if (areaNm.equals(menu) && (touDivNm.equals("외지인(b)") || touDivNm.equals("외국인(c)"))) {
					if (baseYmd.contains(monthList.get(0))) {
						total[0] = total[0] + (int) Math.round(Double.parseDouble((String) jsonObj.get("touNum")));

					} else if (baseYmd.contains(monthList.get(1))) {
						total[1] = total[1] + (int) Math.round(Double.parseDouble((String) jsonObj.get("touNum")));

					} else if (baseYmd.contains(monthList.get(2))) {
						total[2] = total[2] + (int) Math.round(Double.parseDouble((String) jsonObj.get("touNum")));

					} else if (baseYmd.contains(monthList.get(3))) {
						total[3] = total[3] + (int) Math.round(Double.parseDouble((String) jsonObj.get("touNum")));

					}
				}

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ArrayList visiterList = new ArrayList();
		visiterList.add(monthList);
		visiterList.add(total);

		return visiterList;
	}
}
