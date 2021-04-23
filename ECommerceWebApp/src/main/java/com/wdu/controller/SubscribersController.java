package com.wdu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Subscribers;
import com.wdu.service.SubscribersService;

@Controller
public class SubscribersController {
	
	
	@Autowired
	SubscribersService subscribeService;
	
	
	
	@RequestMapping("/subscribers/save")
	public String save(@ModelAttribute Subscribers subscribers) {
		subscribeService.save(subscribers);
	return null;
	}
}
