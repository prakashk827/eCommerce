package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.ExperienceRepository;
import com.wdu.entity.Experience;

@Service
public class ExperienceService {

	@Autowired
	ExperienceRepository experienceRepository;
	
	public void save(Experience experience) {
		experienceRepository.save(experience);
	}
	
	public Experience getExperience(){
		List<Experience> experienceList = experienceRepository.findAll();
		
		if(!experienceList.isEmpty()) {
			return experienceList.get(0);
		} else {
			return new Experience();
		}
	}
}
