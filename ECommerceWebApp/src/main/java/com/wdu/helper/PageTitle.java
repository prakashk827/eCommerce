package com.wdu.helper;

public class PageTitle {

	private String title;
	private String pageHeader;
	private String PageIcon;

	
	
	
	public PageTitle(String title, String pageHeader, String pageIcon) {
		super();
		this.title = title;
		this.pageHeader = pageHeader;
		PageIcon = pageIcon;
	}

	public PageTitle() {
		super();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPageHeader() {
		return pageHeader;
	}

	public void setPageHeader(String pageHeader) {
		this.pageHeader = pageHeader;
	}

	public String getPageIcon() {
		return PageIcon;
	}

	public void setPageIcon(String pageIcon) {
		PageIcon = pageIcon;
	}

}
