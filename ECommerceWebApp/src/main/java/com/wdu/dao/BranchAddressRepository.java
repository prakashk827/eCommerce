package com.wdu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.BranchAddress;

public interface BranchAddressRepository extends JpaRepository<BranchAddress, Integer> {

}
