package com.garak.qna;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {
	
	@RequestMapping("/qna/list")
	public String goQnaList(Model model){
		return "qna/qnaList";
	}
	
	@RequestMapping("/qna/viewPwd")
	public String goQnaViewPwd(Model model){
		return "qna/qnaPwd";
	}
	
	@RequestMapping("/qna/write")
	public String goQnaWrite(Model model) {
		return "qna/qnaWrite";
	}
}
