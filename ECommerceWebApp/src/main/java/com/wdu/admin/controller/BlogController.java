package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Blog;
import com.wdu.service.BlogService;

@Controller
@RequestMapping("/admin")
public class BlogController {
	@Autowired
	BlogService blogService;
	
	@RequestMapping("/blog/add")
	public String add(Model model,Blog blog) {
		model.addAttribute("blog", new Blog());
		model.addAttribute("blogList", blogService.getAllBlogs());
		return "admin/blog";
	}
	
	@GetMapping("/blog/delete/{id}")
	public String delete(@PathVariable Integer id) {
		blogService.deleteById(id);
		return "redirect:/admin/blog/add";
	}
	
	@GetMapping("/blog/update/{id}")
	public String update(@PathVariable Integer id,Model model) {
		model.addAttribute("blog",blogService.findById(id));
		return "/admin/blog";
	}
	
	
	@RequestMapping("/blog/save")
	public String save(@ModelAttribute Blog blog) {
		blogService.save(blog);
		return "redirect:/admin/blog/add";
	}
	
	
}
