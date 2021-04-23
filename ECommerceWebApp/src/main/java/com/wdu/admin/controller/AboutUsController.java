package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.AboutUs;
import com.wdu.service.AboutUsService;

@Controller
@RequestMapping("/admin")
public class AboutUsController {
	@Autowired
	AboutUsService aboutUsService;

	@RequestMapping("/about-us/view")
	public String vew(Model model) {
	model.addAttribute("aboutUs", aboutUsService.getaboutUs());
		return "admin/aboutUs";
	}
	
	
	@RequestMapping("/about-us/save")
	public String save(Model model,AboutUs aboutUs) {
	model.addAttribute("aboutUs", aboutUsService.getaboutUs());
	aboutUsService.save(aboutUs);
	return "redirect:/admin/about-us/view";
	}
}
