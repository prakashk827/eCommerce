package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AboutUs {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title = "EVENT OUTCOMES";
	private String subTitle = "Learn new things and connect people";
	private String description = "How you transform your business technology consumer, habits industry dynamic change the Find out from those leading\r\n"
			+ "\r\n"
			+ "";
	
	private String buttonDisplay ="hide";	
	private String buttonTitle = "Learn More";
	private String buttonUrl ="#";
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getButtonDisplay() {
		return buttonDisplay;
	}
	public void setButtonDisplay(String buttonDisplay) {
		this.buttonDisplay = buttonDisplay;
	}
	public String getButtonTitle() {
		return buttonTitle;
	}
	public void setButtonTitle(String buttonTitle) {
		this.buttonTitle = buttonTitle;
	}
	public String getButtonUrl() {
		return buttonUrl;
	}
	public void setButtonUrl(String buttonUrl) {
		this.buttonUrl = buttonUrl;
	}
	
	
	
	
	
	
	
	
}
