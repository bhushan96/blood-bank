package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.FeedbackEntity;
import com.service.FeedbackService;

@Controller
@RequestMapping("feedback")
public class FeedbackController {
	
	@Autowired
	FeedbackService feedbackService;
	
	@GetMapping("/form")
	String showFeedbackForm(Model model){
		
		FeedbackEntity feedback=new FeedbackEntity();
		model.addAttribute("feedback", feedback);
		return "feedbackForm";
	}
	
	@GetMapping("/save")
	String saveFeedbackDetails(@ModelAttribute("feedback") FeedbackEntity feedback){
		
		boolean flag;
		flag=feedbackService.saveFeedback(feedback);
		return "redirect:/home";
	}

}
