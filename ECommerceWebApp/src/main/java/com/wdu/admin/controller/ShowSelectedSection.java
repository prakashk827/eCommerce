package com.wdu.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ShowSelectedSection {

	@RequestMapping("/show-selected/view")
	public String view() {
		return "admin/showSection";
		
	}
}
