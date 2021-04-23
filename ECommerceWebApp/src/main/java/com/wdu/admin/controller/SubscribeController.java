package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Subscribe;
import com.wdu.service.subscribeService;

@Controller
@RequestMapping("/admin")
public class SubscribeController {

	@Autowired
	subscribeService subscribeService;

	@RequestMapping("/subscribe/view")
	public String view(Model model) {
		model.addAttribute("subscribe", subscribeService.getFirstSubscribeRecord());
		return "admin/subscribe";
	}

	@RequestMapping("/subscribe/update")
	public String updte(@ModelAttribute Subscribe subscribe) {
		subscribeService.save(subscribe);
		return "redirect:/admin/subscribe/view";
	}

}
