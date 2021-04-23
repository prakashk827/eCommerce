package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.RegisteredUserRepository;
import com.wdu.entity.RegisteredUser;

@Service
public class RegisteredUserService {
	
	@Autowired
	RegisteredUserRepository registeredUserRepository;
	public List<RegisteredUser> getRegisteredUserList(){
		return registeredUserRepository.findAll();
	}
	public List<RegisteredUser> findByName(String name) {
		return registeredUserRepository.findByName(name);
		
	}
	
	public List<RegisteredUser> findByMobile(String mobile) {
		return registeredUserRepository.findByMobile(mobile);
		
	}
	
	public List<RegisteredUser> findByEmail(String email) {
		return registeredUserRepository.findByEmail(email);
		
	}
	
	public List<RegisteredUser> findByInstrument(String instrument) {
		return registeredUserRepository.findByDropDownValue(instrument);
		
	}
	
	public List<RegisteredUser> findByGivenData(String name,String mobile) {
		return registeredUserRepository.findByNameAndMobile(name,mobile);

	
	
}
}