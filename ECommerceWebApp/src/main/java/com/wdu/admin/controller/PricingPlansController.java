
package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.PricingPlans;
import com.wdu.service.PricingPlansService;

@Controller

@RequestMapping("/admin")
public class PricingPlansController {

	@Autowired
	PricingPlansService pricingPlansService;

	@RequestMapping("/pricePlan/view")
	public String view(Model model) {
		try {
			model.addAttribute("pricePlan", new PricingPlans());
			model.addAttribute("pricingPlanList", pricingPlansService.getAllPricingPlans());
		} catch (Exception e) {
			System.out.println("Error in pricePlan/view controller");
			e.printStackTrace();
		}
		return "admin/savePricePlan";

	}

	@PostMapping("/pricePlan/save")
	public String save(@ModelAttribute PricingPlans pricingPlans) {
		pricingPlansService.savePricePlan(pricingPlans);
		return "redirect:/admin/pricePlan/view";
	}

	@GetMapping("/pricePlan/delete/{id}")
	public String delete(@PathVariable int id) {
		pricingPlansService.deletePricePlanById(id);
		return "redirect:/admin/pricePlan/view";
	}

	@GetMapping("/pricePlan/update/{id}")
	public String update(@PathVariable int id, Model model) {
		PricingPlans pricingPlans = pricingPlansService.getPricePlanById(id);
		model.addAttribute("pricingPlanList", pricingPlansService.getAllPricingPlans());
		model.addAttribute("pricePlan", pricingPlans);
		return "/admin/savePricePlan";
	}

}
