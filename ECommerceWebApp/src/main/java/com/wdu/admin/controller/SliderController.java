package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Slider;
import com.wdu.helper.PageTitle;
import com.wdu.service.SliderService;

@Controller
@RequestMapping("/admin")
public class SliderController {

	@Autowired
	SliderService sliderService;

	@GetMapping("/slider/view")
	public String view(Model model) {
		try {
			model.addAttribute(new PageTitle("Admin-Slider", "Slider section settings", "\"fa fa-home fa-lg\""));
			model.addAttribute("slider", sliderService.getSliderDetails());
			return "admin/saveSlider";
		} catch (Exception e) {
			model.addAttribute("errorMsg", "Error in slider/view controller");
			e.printStackTrace();
			return "admin/errorPage";
		}
	}
	
	@PostMapping("/slider/save")
	public String save(@ModelAttribute Slider slider) {
		sliderService.save(slider);
		return "redirect:/admin/slider/view";

	}

}
