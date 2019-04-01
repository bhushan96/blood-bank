package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.BloodRequirementEntity;
import com.service.BloodAvailibilityService;
import com.service.BloodRequirementService;

@Controller
@RequestMapping("requirement")
public class BloodRequirementController {
	
	@Autowired
	BloodRequirementService bloodrequirementservice;
	
	@GetMapping("/form")
	public String addRequirementForm(Model model)
	{
		BloodRequirementEntity bloodRequirementEntity=new BloodRequirementEntity();
		model.addAttribute("requirementdetails",bloodRequirementEntity);
		return "addrequirmentform";
	}
	
	@PostMapping("/add")
	public String addRequirement(@ModelAttribute("requirementdetails")BloodRequirementEntity bloodRequirementEntity)
	{
/*		BloodRequirementEntity bloodRequirementEntity2=new BloodRequirementEntity();
		bloodRequirementEntity2.setArea("Kharar");
		bloodRequirementEntity2.setBlood_group("B-positive");
		bloodRequirementEntity2.setContact("8263890500");
		bloodRequirementEntity2.setPincode("140413");
		bloodRequirementEntity2.setState("Punjab");;*/
		boolean b=bloodrequirementservice.addBloodRequirement(bloodRequirementEntity);
		return "redirect:/home";
	}
	
	
}
