package com.wdu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SectionDisplay {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String section1 =  "show";
	private String section2 =  "show";
	private String section3 =  "show";
	private String section4 =  "show";
	private String section5 =  "show";
	private String section6 =  "show";
	private String section7 =  "show";
	private String section8 =  "show";
	private String section9 =  "show";
	private String section10 = "show";

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSection1() {
		return section1;
	}

	public void setSection1(String section1) {
		this.section1 = section1;
	}

	public String getSection2() {
		return section2;
	}

	public void setSection2(String section2) {
		this.section2 = section2;
	}

	public String getSection3() {
		return section3;
	}

	public void setSection3(String section3) {
		this.section3 = section3;
	}

	public String getSection4() {
		return section4;
	}

	public void setSection4(String section4) {
		this.section4 = section4;
	}

	public String getSection5() {
		return section5;
	}

	public void setSection5(String section5) {
		this.section5 = section5;
	}

	public String getSection6() {
		return section6;
	}

	public void setSection6(String section6) {
		this.section6 = section6;
	}

	public String getSection7() {
		return section7;
	}

	public void setSection7(String section7) {
		this.section7 = section7;
	}

	public String getSection8() {
		return section8;
	}

	public void setSection8(String section8) {
		this.section8 = section8;
	}

	public String getSection9() {
		return section9;
	}

	public void setSection9(String section9) {
		this.section9 = section9;
	}

	public String getSection10() {
		return section10;
	}

	public void setSection10(String section10) {
		this.section10 = section10;
	}

}
