package com.michael.elephant.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.michael.elephant.models.LoginUser;
import com.michael.elephant.models.User;
import com.michael.elephant.services.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String landing() {
		return "landing.jsp";
	}
	
	@GetMapping("/loggingIn")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "login.jsp";
	}
	@GetMapping("/registering")
	public String registering(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "index.jsp";
	}
	@PostMapping("/register")
	public String processRegister(
			@Valid @ModelAttribute("newUser") 
			User newUser, BindingResult result, Model model, HttpSession session) {
		User registeredUser = userService.register(newUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
		}else {
			session.setAttribute("userId", registeredUser.getId());

			session.setAttribute("userName", registeredUser.getUserName());
			return "redirect:/dashboard";
		}
	}
	@PostMapping("/login")
	public String processLogin(
			@Valid @ModelAttribute("newLogin") 
			LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "login.jsp";
		}else {
			session.setAttribute("userId", user.getId()); 
			session.setAttribute("userName", user.getUserName());
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
