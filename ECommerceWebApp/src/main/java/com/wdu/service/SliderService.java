package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.SliderRepository;
import com.wdu.entity.Slider;

@Service
public class SliderService {

	@Autowired
	SliderRepository sliderRepository;

	public void save(Slider slider) {
		sliderRepository.save(slider);
	}

	public Slider getSliderDetails() {

		List<Slider> sliderList = sliderRepository.findAll();

		if (!sliderList.isEmpty()) {
			return sliderList.get(0);
		} else {
			return new Slider();
		}
	}
}
