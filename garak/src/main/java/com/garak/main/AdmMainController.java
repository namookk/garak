package com.garak.main;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdmMainController {
	
	@RequestMapping("/adm/login")
	public String goAdmlogin(Model model){
		return "adm/login/login";
	}
	
	@RequestMapping("/adm/main")
	public String goAdmMain(Model model){
		return "adm/main/main";
	}
	
	@RequestMapping("/adm/main/tab")
	public String goAdmMainTab(Model model) {
		return "adm/main/mainTab";
	}
}
