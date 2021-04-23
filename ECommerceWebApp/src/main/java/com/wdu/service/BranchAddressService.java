package com.wdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdu.dao.BranchAddressRepository;
import com.wdu.entity.BranchAddress;

@Service
public class BranchAddressService {

	@Autowired
	BranchAddressRepository branchRepository;
	
	public void save(BranchAddress branchAddress) {
		branchRepository.save(branchAddress);
		
	}

	public List<BranchAddress> getAllBranches() {
		return  branchRepository.findAll();
		
	}

	public void delete(int id) {
		branchRepository.deleteById(id);
	}
	
	
	
	
}
