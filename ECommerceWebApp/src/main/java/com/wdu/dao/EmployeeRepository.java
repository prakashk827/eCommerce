package com.wdu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wdu.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>{

}
