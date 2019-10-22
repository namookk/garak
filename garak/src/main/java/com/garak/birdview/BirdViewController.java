package com.garak.birdview;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BirdViewController {
	
	@RequestMapping("/birdView/view")
	public String goBirdViewView(Model model) {
		return "birdview/birdView";
	}
}
