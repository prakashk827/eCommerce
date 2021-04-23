package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Counter {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String counterTitle;
	private int counterValue;

	public Counter() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCounterTitle() {
		return counterTitle;
	}

	public void setCounterTitle(String counterTitle) {
		this.counterTitle = counterTitle;
	}

	public int getCounterValue() {
		return counterValue;
	}

	public void setCounterValue(int counterValue) {
		this.counterValue = counterValue;
	}

	@Override
	public String toString() {
		return "Counter [id=" + id + ", counterTitle=" + counterTitle + ", counterValue=" + counterValue + "]";
	}

}