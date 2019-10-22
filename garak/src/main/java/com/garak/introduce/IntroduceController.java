package com.garak.introduce;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroduceController {
	
	@RequestMapping("/introduce/view")
	public String goIntroduceView(Model model){
		return "introduce/introduce";
	}
}
