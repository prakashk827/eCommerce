package com.wdu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wdu.dao.CounterRepository;
import com.wdu.dao.EmployeeRepository;
import com.wdu.dao.InstrumentsRepository;
import com.wdu.dao.RegisteredUserRepository;
import com.wdu.entity.Blog;
import com.wdu.entity.BlogComments;
import com.wdu.entity.BranchAddress;
import com.wdu.entity.Counter;
import com.wdu.entity.EmpAddress;
import com.wdu.entity.Employee;
import com.wdu.entity.Instruments;
import com.wdu.entity.RegisteredUser;
import com.wdu.service.AboutUsService;
import com.wdu.service.BlogService;
import com.wdu.service.BranchAddressService;
import com.wdu.service.ExperienceService;
import com.wdu.service.PricingPlansService;
import com.wdu.service.SectionDisplayService;
import com.wdu.service.SliderService;
import com.wdu.service.SocialMediaLinksService;
import com.wdu.service.subscribeService;
import com.wdu.staticData.StaticData;

@Controller
public class HomeController {

	@Autowired
	CounterRepository counterRepository;
	@Autowired
	RegisteredUserRepository studentRepository;
	@Autowired
	SliderService sliderService;
	@Autowired
	InstrumentsRepository instrumentsRepository;
	@Autowired
	subscribeService subscribeService;
	@Autowired
	SocialMediaLinksService socialMediaLinksService;
	@Autowired
	BlogService blogService;
	@Autowired
	BranchAddressService branchAddressService;
	@Autowired
	ExperienceService experienceService;
	@Autowired
	PricingPlansService pricingPlansService;
	@Autowired
	SectionDisplayService sectionDisplayService;
	@Autowired
	AboutUsService aboutUsService;
	
	@Autowired
	EmployeeRepository employeeRepository;

	private List<Instruments> getAllInstruments() {
		List<Instruments> instrumentsList = instrumentsRepository.findAll();
		return instrumentsList;
	}

	StaticData staticData = new StaticData();
	@RequestMapping("/del")
	public String delete() {
		Employee emp = employeeRepository.findById(121).get();
		employeeRepository.delete(emp);
		return "homePage"; 
	}
	
	@RequestMapping("/emp")
	public String emp() {
		Employee emp = new Employee();
		emp.setEmpName("Prakash");
		EmpAddress add1 = new EmpAddress();
		add1.setCountry("India");
		add1.setState("Karnataka");
		add1.setCity("Raichur");
		
		EmpAddress add2 = new EmpAddress();
		add2.setCountry("Ind");
		add2.setState("Kar");
		add2.setCity("Banglore");
		
		emp.getEmpAddressList().add(add1);
		emp.getEmpAddressList().add(add2);
		System.out.println("JUU");
		employeeRepository.save(emp);
		return "homePage";
	}
	
	
	@RequestMapping("/")
	public String homePage(Model model) {
		
		
		
		
		
		
		
		//Section Display
		model.addAttribute("section",sectionDisplayService.getSectionDisplay());
		//Titile
		model.addAttribute("title","Home-Page");
		//Slider
		model.addAttribute("slider",sliderService.getSliderDetails());
		//About Us
		model.addAttribute("aboutUs",aboutUsService.getaboutUs());
		//Counter
		List<Counter> counterList = counterRepository.findAll();
		model.addAttribute("counter", counterList);
		//Pricing Plan
		model.addAttribute("pricingPlanList", pricingPlansService.getAllPricingPlans());
		model.addAttribute("pricePlanTitle", pricingPlansService.getAllPricingPlans().get(0).getTitle());
		model.addAttribute("pricePlanSubTitle", pricingPlansService.getAllPricingPlans().get(0).getSubTitle());
		
		// Branch Address
		model.addAttribute("branchAddress1",new BranchAddress());
		model.addAttribute("branchAddress2",new BranchAddress());	
		
		if(branchAddressService.getAllBranches().size() == 1) {
			model.addAttribute("branchAddress1",branchAddressService.getAllBranches().get(0));
		} else if(branchAddressService.getAllBranches().size() >=2) {
			model.addAttribute("branchAddress1",branchAddressService.getAllBranches().get(0));
			model.addAttribute("branchAddress1",branchAddressService.getAllBranches().get(1));
		}
		model.addAttribute("instrumentsList", getAllInstruments());
		//Experience
		model.addAttribute("experience", experienceService.getExperience());
		
		//Blog
		model.addAttribute("blogList",blogService.getAllBlogs());
		
		//Footer
		model.addAttribute("subscribe",subscribeService.getFirstSubscribeRecord());
		model.addAttribute("socialMediaLinks", socialMediaLinksService.getFirstSocialMediaLinks());
		return "homePage";
	}

	@RequestMapping("/save-student")
	public String save(@ModelAttribute RegisteredUser student) {
		studentRepository.save(student);
		return "redirect:/";

	}
	
	@GetMapping("/blog-detail/{id}")
	public String blogDetails(@PathVariable int id,Model model) {
		model.addAttribute("blog", blogService.getBlogById(id));
		model.addAttribute("blogCommentList", blogService.getBlogById(id).getBlogCommentsList());
		
		
		return "blogDes";
	}
	
	@PostMapping("/comments/save-blog-comment/")
	public String saveBlogComment(BlogComments blogComments) {
		Blog blog = blogService.getBlogById(blogComments.getBlogId());
		blog.getBlogCommentsList().add(blogComments);
		blogService.save(blog);
		return "redirect:/";
	}
	
	
}
