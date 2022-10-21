package com.michael.elephant.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.michael.elephant.models.Gift;
import com.michael.elephant.services.GiftService;

@Controller
public class HomeController {

	@Autowired
	private GiftService giftService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
	if(session.getAttribute("userId")==null) {
		session.invalidate();
		return "redirect:/";
	}
	model.addAttribute("giftList", giftService.allGifts());
		return "dashboard.jsp";
	}
	
	//Create

	@GetMapping("/gift/new")
		public String newGiftForm(
		@ModelAttribute("newGift") Gift newGift) {
			return "create.jsp";
	}
	@PostMapping("/gift/new")
		public String createGift(
			@Valid @ModelAttribute("newGift") Gift gift, 
			BindingResult result,
			Model model) {
		if(result.hasErrors()) {
			return "create.jsp";
		}
		else {
			giftService.createGift(gift);
				return "redirect:/dashboard";
		}
		}
	//GET ONE 
	@GetMapping("/gift/{id}")
		public String giftDetails(@PathVariable("id")Long id, Model model) {
			Gift foundGift = giftService.oneGift(id);
			model.addAttribute("gift", foundGift);
				return "show.jsp";
		}
	//Edit
	//1. Show the form
	@GetMapping("/gift/edit/{id}")
		public String editForm(@PathVariable("id") Long id, Model model) {
		Gift foundGift = giftService.oneGift(id);
		model.addAttribute("gift", foundGift);
		return "edit.jsp";
	}
	//2. process form
	@PutMapping("/gift/edit/{id}")
		public String processEditForm(
				@Valid @ModelAttribute("gift") Gift gift, 
				BindingResult result,
				Model model 
				) {
			if(result.hasErrors()) {
				return "edit.jsp";
			}
			else {
				giftService.editGift(gift);
				return "redirect:/dashboard";
			}
		}
	// Delete
	@DeleteMapping("/gift/delete/{id}")
		public String deleteGift(@PathVariable("id")Long id) {
			giftService.deleteGift(id);
				return"redirect:/dashboard";
			}

}
