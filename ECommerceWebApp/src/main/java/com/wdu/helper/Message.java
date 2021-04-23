package com.wdu.helper;

public  class Message {
	
	private String content;
	private String type;
	
	public Message(String content, String tyep) {
		super();
		this.content = content;
		this.type = tyep;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	
	
	

}
