
package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PricingPlans {

	@Id

	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String price;
	private String detail;
	private String rating ="500/500";
	private String btnTitle;
	private String tax;
	private String btnUrl;
	private String title="PRICING PLANS";
	private String subTitle = "Get your Ticket";
	private String buttonDisplay = "show";

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getBtnTitle() {
		return btnTitle;
	}

	public void setBtnTitle(String btnTitle) {
		this.btnTitle = btnTitle;
	}

	public String getTax() {
		return tax;
	}

	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getBtnUrl() {
		return btnUrl;
	}

	public void setBtnUrl(String btnUrl) {
		this.btnUrl = btnUrl;
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

	public String getButtonDisplay() {
		return buttonDisplay;
	}

	public void setButtonDisplay(String buttonDisplay) {
		this.buttonDisplay = buttonDisplay;
	}

	
	
	
	
	

}
