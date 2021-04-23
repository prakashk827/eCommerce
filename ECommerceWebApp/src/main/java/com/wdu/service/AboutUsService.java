package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.AboutUsRepository;
import com.wdu.entity.AboutUs;
@Service
public class AboutUsService {
	
	@Autowired
	AboutUsRepository aboutUsRepository;
	
	public void save(AboutUs aboutUs) {
		aboutUsRepository.save(aboutUs);
	}
	
	public AboutUs getaboutUs(){
		List<AboutUs> aboutUsList = aboutUsRepository.findAll();
		
		if(!aboutUsList.isEmpty()) {
			return aboutUsList.get(0);
		} else {
			return new AboutUs();
		}
	}

}
