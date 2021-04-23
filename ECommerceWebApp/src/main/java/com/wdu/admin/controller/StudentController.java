package com.wdu.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.dao.RegisteredUserRepository;
import com.wdu.entity.Instruments;
import com.wdu.entity.RegisteredUser;
import com.wdu.helper.PageTitle;
import com.wdu.service.HomeService;
import com.wdu.service.RegisteredUserService;

@Controller
@RequestMapping("/admin")
public class StudentController {

	@Autowired
	RegisteredUserRepository registeredUserRepository;
	@Autowired
	HomeService homeService;
	@Autowired
	RegisteredUserService registeredUserService;

	@RequestMapping("/view-students")
	public String view(Model model,RegisteredUser registeredUser) {
		
		model.addAttribute("studentList", registeredUserService.getRegisteredUserList());
		model.addAttribute("instruments", new Instruments());
		model.addAttribute(new PageTitle("Admin-Students", "Students", "\"fa fa-home fa-lg\""));
		model.addAttribute("instrumentsList", homeService.getAllInstruments());
		
		String filterValue = registeredUser.getFilterValue();
		String filterBy = registeredUser.getFilterBy();
		
		List<RegisteredUser> studentList = null;
	
		if (filterBy != null && filterValue != null) {
			if (filterBy.equals("name")) {
				studentList = registeredUserService.findByName(filterValue);
			} else if (filterBy.equals("mobile")) {
				studentList = registeredUserService.findByMobile(filterValue);
			} else if (filterBy.equals("email")) {
				studentList = registeredUserService.findByEmail(filterValue);
			} 
			
			if (studentList.isEmpty()) {
				model.addAttribute("msg", "No records found");
			}
			model.addAttribute("studentList", studentList);
			
		} else {
			model.addAttribute("studentList",registeredUserService.getRegisteredUserList());
		}
		
		
		return "/admin/viewStudents";
	}

	@PostMapping("/registered/search-by")
	public String searchBy(Model model, RegisteredUser registeredUser) {

		return null;
		
		
		
		
		
	}

}
