package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FormDropdownValues {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	private String dropDownValue;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDropDownValue() {
		return dropDownValue;
	}
	public void setDropDownValue(String dropDownValue) {
		this.dropDownValue = dropDownValue;
	}
	
	
	
}
