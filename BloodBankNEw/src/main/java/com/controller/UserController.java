package com.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.UserDetailsEntity;
import com.service.UserService;


@Controller
public class UserController {

	@Autowired
	UserService userService;
	

@GetMapping("/home")
public String homepage(){
	return "homePage";
}
  
  @GetMapping("/register")
  public String userRegistrationForm(Model model, Principal principal) {
    return "userRegistrationForm";
  }
  
  
  
  @PostMapping("/saveDetails")
  public String register(Model model,@RequestParam("first") String first,@RequestParam("last") String last,@RequestParam("age") int age,
		  @RequestParam("gender") String gender,@RequestParam("contact") String contact,@RequestParam("email") String email,
		  @RequestParam("password") String password,@RequestParam("weight") int weight,@RequestParam("state") String state,@RequestParam("area") String area,@RequestParam("pincode") int pincode,@RequestParam("bloodgroup") String blood_group) {
	  
	  System.out.println("I am in save details controller");
	  String encoded=new BCryptPasswordEncoder().encode(password);
	  UserDetailsEntity userReg=new UserDetailsEntity(first,last,age,gender,contact,email,encoded,weight,state,area,pincode,blood_group);
	  System.out.println(userReg);
	  boolean flag=userService.saveUser(userReg);
	  model.addAttribute("register",flag);
	  if(flag==true)
		  return "userRegistrationForm";
	  else
		  return "redirect:/register?fail";
  }
  
  @RequestMapping(value="/logout", method=RequestMethod.GET)  
  public String logoutPage(HttpServletRequest request, HttpServletResponse response) {  
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();  
      if (auth != null){      
         new SecurityContextLogoutHandler().logout(request, response, auth);  
      }  
       return "redirect:/";  
   }  
  
}
