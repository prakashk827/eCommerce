package com.wdu.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.Counter;
import com.wdu.helper.Message;
import com.wdu.helper.PageTitle;
import com.wdu.service.CounterService;

@Controller
@RequestMapping("/admin")
public class CounterController {
	@Autowired
	CounterService counterService;

	@RequestMapping("/counter")
	public String counter(Model model) {
		model.addAttribute("counterList", counterService.getAllCounter());
		model.addAttribute("counter", new Counter());
		model.addAttribute(new PageTitle("Admin-Counter", "Counter", "\"fa fa-home fa-lg\""));
		return "admin/counterSection";

	}

	@RequestMapping("/save-counter")
	public String saveCounter(Model model, @ModelAttribute Counter counter) {

		try {

			if (counterService.getAllCounter().size() >= 4) {
				model.addAttribute("msg", new Message("Only four counters are allowed", "red"));
				return "admin/errorPage";
			} else {
				counterService.save(counter);
				model.addAttribute("counterList", counterService.getAllCounter());
				model.addAttribute("counter", new Counter());
				return "redirect:/admin/counter";
			}
		} catch (Exception e) {
			model.addAttribute("msg", new Message("Error while saving counter !!", "red"));
			model.addAttribute("counter", counter);
			return "admin/errorPage";
		}

	}

	@RequestMapping("/delete-counter/{id}")
	public String deleteCounter(@PathVariable Integer id, Model model) {
		counterService.delete(id);
		model.addAttribute("counterList", counterService.getAllCounter());
		model.addAttribute("msg", new Message("Deleted !!", "green"));
		return "redirect:/admin/counter/";

	}
}
