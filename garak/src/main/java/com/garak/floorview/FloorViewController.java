package com.garak.floorview;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FloorViewController {
	
	@RequestMapping("/floorView/view")
	public String goFloorViewView(Model model) {
		return "floorview/floorView";
	}
}
