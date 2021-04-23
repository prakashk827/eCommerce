package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Subscribe {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String firstTitle = "SUBSCRIBE TO NEWSLETTER";
	private String secondTitle  = "Want something extra?";
	private String buttonTitle = "SUBSCRIBE";
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstTitle() {
		return firstTitle;
	}
	public void setFirstTitle(String firstTitle) {
		this.firstTitle = firstTitle;
	}
	public String getSecondTitle() {
		return secondTitle;
	}
	public void setSecondTitle(String secondTitle) {
		this.secondTitle = secondTitle;
	}
	public String getButtonTitle() {
		return buttonTitle;
	}
	public void setButtonTitle(String buttonTitle) {
		this.buttonTitle = buttonTitle;
	}
	
	
	
	
	
	
}
