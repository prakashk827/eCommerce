package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Experience;
import com.wdu.service.ExperienceService;

@Controller
@RequestMapping("/admin")
public class ExperienceController {
	@Autowired
	ExperienceService experienceService;

	@RequestMapping("/experience/view")
	public String vew(Model model) {
		model.addAttribute("experience", experienceService.getExperience());
		return "admin/experience";
	}
	
	@RequestMapping("/experience/save")
	public String vew(@ModelAttribute Experience experience, Model model) {
		experienceService.save(experience);
		model.addAttribute("experience", new Experience());
		return "redirect:/admin/experience/view";
	}

}
