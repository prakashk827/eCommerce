package com.wdu.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String empName;
	
	@ElementCollection
	private List<EmpAddress> empAddressList = new ArrayList<>();
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public List<EmpAddress> getEmpAddressList() {
		return empAddressList;
	}
	public void setEmpAddressList(List<EmpAddress> empAddressList) {
		this.empAddressList = empAddressList;
	}
	
	
	
	

}
