package com.flight.booking.tour;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApiController {
	@Autowired
	private VisiService visiService;
	
	@Autowired
	private CovidService covidService;
	
	@RequestMapping("tour/search_tour")
	public void apiController(CovidDTO dto, Model model) {
			
		    ArrayList visiterList = visiService.tourlist(dto);
		    ArrayList covidList = covidService.covid19(dto);
		
			model.addAttribute("monthList", visiterList.get(0));
			model.addAttribute("total", visiterList.get(1));
			model.addAttribute("region",dto.getRegion());
			model.addAttribute("covidList", covidList.get(0));
			
			
	}

}


