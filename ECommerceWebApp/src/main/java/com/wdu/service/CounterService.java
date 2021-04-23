package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.CounterRepository;
import com.wdu.entity.Counter;

@Service
public class CounterService {

	
	@Autowired
	CounterRepository counterRepository;

	public List<Counter> getAllCounter() {

		return  counterRepository.findAll();
		

	}
	
	public void save(Counter counter) {
		counterRepository.save(counter);
	}

	public Counter findById(Integer id) {
		return  counterRepository.findById(id).get();
	
	}

	public void delete(Integer id) {
		
		counterRepository.deleteById(id);
	}
}
