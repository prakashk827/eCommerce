package com.wdu.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.Counter;

public interface CounterRepository extends JpaRepository<Counter, Integer> {
	
	List<Counter> findAll();
	

}
