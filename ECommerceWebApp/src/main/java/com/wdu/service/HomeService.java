package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.InstrumentsRepository;
import com.wdu.entity.Instruments;

@Service
public class HomeService {
	
	@Autowired
	InstrumentsRepository instrumentsRepository;
	
	public List<Instruments> getAllInstruments() {
		List<Instruments> instrumentsList = instrumentsRepository.findAll();
		return instrumentsList;
	}
}
