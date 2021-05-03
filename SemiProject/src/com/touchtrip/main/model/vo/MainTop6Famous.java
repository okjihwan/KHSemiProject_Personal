package com.touchtrip.main.model.vo;

import java.io.Serializable;

public class MainTop6Famous implements Serializable{
	private String tArea;
	private String tName;
	private String tContent;
	private String tAdress;
	private String tPhone;
	private String tReview;
	private double tScore;
	
	public MainTop6Famous() {
		super();
	}

	public MainTop6Famous(String tArea, String tName, String tContent, String tAdress, String tPhone, String tReview,
			double tScore) {
		super();
		this.tArea = tArea;
		this.tName = tName;
		this.tContent = tContent;
		this.tAdress = tAdress;
		this.tPhone = tPhone;
		this.tReview = tReview;
		this.tScore = tScore;
	}

	@Override
	public String toString() {
		return "MainTop6Famous [tArea=" + tArea + ", tName=" + tName + ", tContent=" + tContent + ", tAdress=" + tAdress
				+ ", tPhone=" + tPhone + ", tReview=" + tReview + ", tScore=" + tScore + "]";
	}

	public String gettArea() {
		return tArea;
	}

	public void settArea(String tArea) {
		this.tArea = tArea;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String gettContent() {
		return tContent;
	}

	public void settContent(String tContent) {
		this.tContent = tContent;
	}

	public String gettAdress() {
		return tAdress;
	}

	public void settAdress(String tAdress) {
		this.tAdress = tAdress;
	}

	public String gettPhone() {
		return tPhone;
	}

	public void settPhone(String tPhone) {
		this.tPhone = tPhone;
	}

	public String gettReview() {
		return tReview;
	}

	public void settReview(String tReview) {
		this.tReview = tReview;
	}

	public double gettScore() {
		return tScore;
	}

	public void settScore(double tScore) {
		this.tScore = tScore;
	}
	
}
