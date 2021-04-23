package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Slider {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String paragraphTag = "5 to 7 June 2019, Waterfront Hotel, London";
	private String h1Tag = "DIGITAL THINKERS MEET UP";
	private String formTitle = "Register Now";
	private String formParagraph = "How you transform your business as tech consumer, habits industry";
	private String formBtnTitle = "Register Now";
	private String firstBtnTitle = "Buy Ticket";
	private String secondBtnTitle="Add to Calender";
	private String firstBtnUrl ="#";
	private String secondBtnUrl="#";
	private String firstBtnDisplay = "show";
	private String secondBtnDisplay = "show";
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getParagraphTag() {
		return paragraphTag;
	}

	public void setParagraphTag(String paragraphTag) {
		this.paragraphTag = paragraphTag;
	}

	public String getH1Tag() {
		return h1Tag;
	}

	public void setH1Tag(String h1Tag) {
		this.h1Tag = h1Tag;
	}

	public String getFormTitle() {
		return formTitle;
	}

	public void setFormTitle(String formTitle) {
		this.formTitle = formTitle;
	}

	public String getFormParagraph() {
		return formParagraph;
	}

	public void setFormParagraph(String formParagraph) {
		this.formParagraph = formParagraph;
	}

	public String getFormBtnTitle() {
		return formBtnTitle;
	}

	public void setFormBtnTitle(String formBtnTitle) {
		this.formBtnTitle = formBtnTitle;
	}

	public String getFirstBtnTitle() {
		return firstBtnTitle;
	}

	public void setFirstBtnTitle(String firstBtnTitle) {
		this.firstBtnTitle = firstBtnTitle;
	}

	public String getSecondBtnTitle() {
		return secondBtnTitle;
	}

	public void setSecondBtnTitle(String secondBtnTitle) {
		this.secondBtnTitle = secondBtnTitle;
	}

	public String getFirstBtnUrl() {
		return firstBtnUrl;
	}

	public void setFirstBtnUrl(String firstBtnUrl) {
		this.firstBtnUrl = firstBtnUrl;
	}

	public String getSecondBtnUrl() {
		return secondBtnUrl;
	}

	public void setSecondBtnUrl(String secondBtnUrl) {
		this.secondBtnUrl = secondBtnUrl;
	}

	public String getFirstBtnDisplay() {
		return firstBtnDisplay;
	}

	public void setFirstBtnDisplay(String firstBtnDisplay) {
		this.firstBtnDisplay = firstBtnDisplay;
	}

	public String getSecondBtnDisplay() {
		return secondBtnDisplay;
	}

	public void setSecondBtnDisplay(String secondBtnDisplay) {
		this.secondBtnDisplay = secondBtnDisplay;
	}

	
	
	
	

	
	
	

	
	
	
	

}
