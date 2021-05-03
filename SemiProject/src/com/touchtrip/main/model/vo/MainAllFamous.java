package com.touchtrip.main.model.vo;

import java.io.Serializable;

public class MainAllFamous implements Serializable{
	private String fArea;
	private String fName;
	private String fContent;
	private String fAddress;
	private String fPhone;
	private String fReview;
	private double fScore;
	
	public MainAllFamous() {
		super();
	}

	public MainAllFamous(String fArea, String fName, String fContent, String fAddress, String fPhone, String fReview,
			double fScore) {
		super();
		this.fArea = fArea;
		this.fName = fName;
		this.fContent = fContent;
		this.fAddress = fAddress;
		this.fPhone = fPhone;
		this.fReview = fReview;
		this.fScore = fScore;
	}

	@Override
	public String toString() {
		return "MainAllFamous [fArea=" + fArea + ", fName=" + fName + ", fContent=" + fContent + ", fAddress=" + fAddress
				+ ", fPhone=" + fPhone + ", fReview=" + fReview + ", fScore=" + fScore + "]";
	}

	public String getfArea() {
		return fArea;
	}

	public void setfArea(String fArea) {
		this.fArea = fArea;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public String getfAddress() {
		return fAddress;
	}

	public void setfAddress(String fAddress) {
		this.fAddress = fAddress;
	}

	public String getfPhone() {
		return fPhone;
	}

	public void setfPhone(String fPhone) {
		this.fPhone = fPhone;
	}

	public String getfReview() {
		return fReview;
	}

	public void setfReview(String fReview) {
		this.fReview = fReview;
	}

	public double getfScore() {
		return fScore;
	}

	public void setfScore(double d) {
		this.fScore = d;
	}
	
	
}
