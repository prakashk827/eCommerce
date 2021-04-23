package com.wdu.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Blog {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	private String subTitle;
	private Date postedDate = new Date();
	private String saveAs;
	private String blogDecsription;
	private String postedBy = "admin";
	private String displayType;
	
	@ElementCollection
	private List<BlogComments> blogCommentsList = new ArrayList<>();
	
	public String getDisplayType() {
		return displayType;
	}

	public void setDisplayType(String displayType) {
		this.displayType = displayType;
	}
	
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

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public String getSaveAs() {
		return saveAs;
	}

	public void setSaveAs(String saveAs) {
		this.saveAs = saveAs;
	}

	public String getBlogDecsription() {
		return blogDecsription;
	}

	public void setBlogDecsription(String blogDecsription) {
		this.blogDecsription = blogDecsription;
	}

	public String getPostedBy() {
		return postedBy;
	}

	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}

	public List<BlogComments> getBlogCommentsList() {
		return blogCommentsList;
	}

	public void setBlogCommentsList(List<BlogComments> blogCommentsList) {
		this.blogCommentsList = blogCommentsList;
	}
	
	
	
	

}
