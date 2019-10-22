package com.garak.floorview;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FloorViewController {
	
	@RequestMapping("/floorView/view")
	public String goFloorViewView(Model model) {
		return "floorview/floorView";
	}
}
