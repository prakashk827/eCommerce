package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.SectionDisplayRepository;
import com.wdu.entity.SectionDisplay;

@Service
public class SectionDisplayService {
	@Autowired
	SectionDisplayRepository sectionDisplayRepository;
	
	public SectionDisplay getSectionDisplay() {
		List<SectionDisplay> sectionDisplayList = sectionDisplayRepository.findAll();
		if(sectionDisplayList.isEmpty()) {
			return new SectionDisplay();
		} else {
			return sectionDisplayList.get(0);
		}
		
	}
	public void update(SectionDisplay sectionDisplay) {
		sectionDisplayRepository.save(sectionDisplay);
	}
	
	
	
}
