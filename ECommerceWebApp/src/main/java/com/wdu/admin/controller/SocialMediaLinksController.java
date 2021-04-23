package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.SocialMediaLinks;
import com.wdu.service.SocialMediaLinksService;

@Controller
@RequestMapping("/admin")
public class SocialMediaLinksController {

	@Autowired
	SocialMediaLinksService socialMediaLinksService;

	@RequestMapping("/social-media/view")
	public String view(Model model) {
		model.addAttribute("socialMediaLinks", socialMediaLinksService.getFirstSocialMediaLinks());
		return "admin/socialMedia";
	}

	@RequestMapping("/social-media/update")
	public String update(@ModelAttribute SocialMediaLinks socialMediaLinks) {
		socialMediaLinksService.save(socialMediaLinks);
		return "redirect:/admin/social-media/view";

	}

}
