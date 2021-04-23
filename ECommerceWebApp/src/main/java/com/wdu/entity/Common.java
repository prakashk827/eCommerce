package com.wdu.entity;

import java.util.Date;

abstract public class Common {

		private String displayType;
		private Date date= new Date();
		
		public String getDisplayType() {
			return displayType;
		}

		public void setDisplayType(String displayType) {
			this.displayType = displayType;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}
		
		
		
		
}
