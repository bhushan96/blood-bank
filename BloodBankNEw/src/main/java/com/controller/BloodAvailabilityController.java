
package com.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.BloodDonationEntity;
import com.service.BloodAvailibilityService;


@Controller
@RequestMapping("availability")
public class BloodAvailabilityController {

	@Autowired
	BloodAvailibilityService bloodAvailabilityService;
	

  
  @GetMapping("/form")
  public String bloodAvailabiltyForm(Model model, Principal principal) {
	  BloodDonationEntity avail=new BloodDonationEntity();
	  model.addAttribute("avail", avail);
    return "bloodAvailabilityForm";
  }
 
  @PostMapping("/search")
  public String searchAvailability(Model model,@ModelAttribute("avail") BloodDonationEntity blood_search){
	  List<BloodDonationEntity> list=bloodAvailabilityService.searchBloodAvailabilty(blood_search);
	  model.addAttribute("bloodAvailabiltySearchResult",list);
	  return "searchresult";
  }
  
  
  
  
  
  
}