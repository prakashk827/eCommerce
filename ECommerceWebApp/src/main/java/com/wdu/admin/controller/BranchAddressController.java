package com.wdu.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.entity.BranchAddress;
import com.wdu.helper.Message;
import com.wdu.service.BranchAddressService;

@Controller
@RequestMapping("/admin")
public class BranchAddressController {
	@Autowired
	BranchAddressService branchAddressService;

	@RequestMapping("/branch-address/view")
	public String view(Model model) {
		List<BranchAddress> branchAdressList = branchAddressService.getAllBranches();
		if (branchAdressList.isEmpty()) {
			model.addAttribute("showWarnMsg", "No records found");
		}
		model.addAttribute("branchAddressList", branchAdressList);
		model.addAttribute("branchAddress", new BranchAddress());
		return "admin/branchAddress";

	}

	@PostMapping("/branch-address/save")
	public String save(@ModelAttribute BranchAddress branchAddress, Model model) {
		if (branchAddressService.getAllBranches().size() == 2) {
			model.addAttribute("msg", new Message("You are allowed to enter only two branch address.", "red"));
			model.addAttribute("branchAddress", branchAddress);
			return "admin/errorPage";
		} else {
			branchAddressService.save(branchAddress);
			return "redirect:/admin/branch-address/view";
		}

	}

	@GetMapping("/branch-address/delete/{id}")
	public String delete(@PathVariable int id) {
		branchAddressService.delete(id);
		return "redirect:/admin/branch-address/view";
	}

}
