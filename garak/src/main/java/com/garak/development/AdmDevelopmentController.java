package com.garak.development;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdmDevelopmentController {

	@RequestMapping("/adm/development/list")
	public String goAdmDevelopmentList(Model model) {
		return "adm/development/developmentList";
	}

	@RequestMapping("/adm/development/edit")
	public String goAdmDevelopmentEdit(Model model) {
		return "adm/development/developmentEdit";
	}

}
