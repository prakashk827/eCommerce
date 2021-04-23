package com.wdu.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.RegisteredUser;

public interface RegisteredUserRepository extends JpaRepository<RegisteredUser, Integer> {

	List<RegisteredUser> findByName(String name);
	List<RegisteredUser> findByMobile(String mobile);
	List<RegisteredUser> findByEmail(String email);
	List<RegisteredUser> findByDropDownValue(String dropDownValue);
	
	List<RegisteredUser> findByNameAndMobile(String name,String mobile);
	
	
 	
	
}
