package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.SectionDisplay;
import com.wdu.service.SectionDisplayService;

@Controller
@RequestMapping("/admin")
public class SectionDisplayController {
	@Autowired
	SectionDisplayService sectionDisplayService;
	@RequestMapping("/display-sections/view")
	public String view(Model model) {
		model.addAttribute("section",sectionDisplayService.getSectionDisplay());
		return "admin/sectionDisplay";
	}
	
	@RequestMapping("/display-sections/update")
	public String update(Model model,SectionDisplay sectionDisplay) {
		sectionDisplayService.update(sectionDisplay);
		return "redirect:/admin/display-sections/view";
	}
	
}
