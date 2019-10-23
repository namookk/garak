package com.garak.common.support;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Component;



@Component	
public class CommonSupport {

	protected void responseJSON(Map<String, Object> jsonMap, HttpServletResponse response) throws IOException {
		
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.disableDefaultTyping().writeValueAsString(jsonMap);

		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		response.getWriter().write(jsonStr);
	}
}
