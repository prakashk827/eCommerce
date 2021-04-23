package com.wdu.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.dao.InstrumentsRepository;
import com.wdu.entity.Instruments;
import com.wdu.helper.Message;
import com.wdu.helper.PageTitle;

@Controller
@RequestMapping("/admin")
public class InstrumentController {

	@Autowired
	InstrumentsRepository instrumentsRepository;

	private List<Instruments> getAllInstruments() {
		List<Instruments> instrumentsList = instrumentsRepository.findAll();
		return instrumentsList;
	}

	/* Instruments Starts */
	@RequestMapping("/add-new-instrumenst")
	public String addNewInstruments(Model model) {
		try {

			model.addAttribute("instrumentsList", getAllInstruments());
			model.addAttribute("instruments", new Instruments());
			model.addAttribute(new PageTitle("Admin-Instruments", "Add Instrument", "\"fa fa-home fa-lg\""));

		} catch (Exception e) {
			System.out.println("Error-in add-new-instrumet controller");
		}
		return "admin/instruments";

	}

	@PostMapping("/save-instruments")
	public String saveInstruments(@ModelAttribute Instruments instruments) {
		instrumentsRepository.save(instruments);
		return "redirect:/admin/add-new-instrumenst";
	}

	@RequestMapping("/delete-instruments/{id}")
	public String deleteInstruments(@PathVariable Integer id, Model model) {

		Instruments instrument = instrumentsRepository.findById(id).get();
		instrumentsRepository.delete(instrument);
		model.addAttribute("instrumentsList", getAllInstruments());
		model.addAttribute("msg", new Message("Deleted !!", "green"));
		return "redirect:/admin/add-new-instrumenst";

	}
	/* Instruments Ends */

}
