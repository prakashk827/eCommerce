package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Blog;
import com.wdu.service.BlogService;

@Controller
@RequestMapping("/admin")
public class BlogController {
	@Autowired
	BlogService blogService;
	@RequestMapping("/blog/add")
	public String add() {
		
		return "admin/blog";
	}
	
	@RequestMapping("/blog/save")
	public String save(@ModelAttribute Blog blog) {
		blogService.save(blog);
		return "redirect:/admin/blog/add";
	}
	
	
}
