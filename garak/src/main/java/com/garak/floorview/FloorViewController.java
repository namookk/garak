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
			HashMap<String, Object> locationMap = new HashMap<String, Object>();
			HashMap<String, Object> locationMap2 = new HashMap<String, Object>();
			HashMap<String, Object> locationMap3 = new HashMap<String, Object>();
			List<HashMap<String, Object>> prdList = new ArrayList<HashMap<String,Object>>();
			
			//seq를 받아서 seq와 매핑되는 데이터를 가지고 옴
			
			locationMap.put("development","A매물");
			locationMap.put("letitude","29");
			locationMap.put("longtitude","0");
			
			prdList.add(locationMap);
			
			locationMap2.put("development","B매물");
			locationMap2.put("letitude","29");
			locationMap2.put("longtitude","50");
			
			prdList.add(locationMap2);
			
			locationMap3.put("development","C매물");
			locationMap3.put("letitude","58");
			locationMap3.put("longtitude","50");
			
			prdList.add(locationMap3);
			
			jsonMap.put("prdList", prdList);
			
			super.responseJSON(jsonMap, response);
			
		} catch(Exception e) {
			System.out.println(e.getMessage()) ;
		}
	}
}
