package com.garak.floorview;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.garak.common.support.CommonSupport;

@Controller
public class FloorViewController extends CommonSupport  {
	
	@RequestMapping("/floorView/view")
	public String goFloorViewView(Model model) {
		return "floorview/floorView";
	}
	
	@RequestMapping("/floorView/prdPerDevelopment")
	public void prdPerDevelopment(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception{
		
		try {
			
			HashMap<String, Object> jsonMap = new HashMap<String, Object>();
			List<HashMap<String, Object>> prdList = new ArrayList<HashMap<String,Object>>();
			
			for(int i = 0 ; i < 10; i++) {
				HashMap<String, Object> locationMap = new HashMap<String, Object>();
				
				locationMap.put("매물","매물"+i);
				locationMap.put("letitude",i*i+30);
				locationMap.put("longtitude",i*i+50);
				
				prdList.add(locationMap);
			}
			jsonMap.put("prdList", prdList);
			
			super.responseJSON(jsonMap, response);
			
		} catch(Exception e) {
			System.out.println(e.getMessage()) ;
		}
	}
}
