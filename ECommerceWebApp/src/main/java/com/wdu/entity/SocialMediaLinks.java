package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SocialMediaLinks {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	private String facbookLink =    "#";
	private String twitterLink =    "#";
	private String goolePlusLink =  "#";
	private String instagramLink =  "#";
	private String linkedinLink =   "#";

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFacbookLink() {
		return facbookLink;
	}

	public void setFacbookLink(String facbookLink) {
		this.facbookLink = facbookLink;
	}

	public String getTwitterLink() {
		return twitterLink;
	}

	public void setTwitterLink(String twitterLink) {
		this.twitterLink = twitterLink;
	}

	public String getGoolePlusLink() {
		return goolePlusLink;
	}

	public void setGoolePlusLink(String goolePlusLink) {
		this.goolePlusLink = goolePlusLink;
	}

	public String getInstagramLink() {
		return instagramLink;
	}

	public void setInstagramLink(String instagramLink) {
		this.instagramLink = instagramLink;
	}

	public String getLinkedinLink() {
		return linkedinLink;
	}

	public void setLinkedinLink(String linkedinLink) {
		this.linkedinLink = linkedinLink;
	}

}
