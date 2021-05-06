package com.touchtrip.Allplanner.map.model.vo;

import java.io.Serializable;

public class Yummy implements Serializable{

	private int yno;
	private int ytype;
	private int yarea;
	private String yname;
	private String yaddress;
	private String yphone;
	
   public Yummy() {
	   super();
   }
	
   
	public Yummy(int yno, int ytype, int yarea, String yname, String yaddress, String yphone) {
	super();
	this.yno = yno;
	this.ytype = ytype;
	this.yarea = yarea;
	this.yname = yname;
	this.yaddress = yaddress;
	this.yphone = yphone;
}


	@Override
	public String toString() {
		return "Yummy [yno=" + yno + ", ytype=" + ytype + ", yarea=" + yarea + ", yname=" + yname + ", yaddress="
				+ yaddress + ", yphone=" + yphone + "]";
	}
	public int getYno() {
		return yno;
	}
	public void setYno(int yno) {
		this.yno = yno;
	}
	public int getYtype() {
		return ytype;
	}
	public void setYtype(int ytype) {
		this.ytype = ytype;
	}
	public int getYarea() {
		return yarea;
	}
	public void setYarea(int yarea) {
		this.yarea = yarea;
	}
	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public String getYaddress() {
		return yaddress;
	}
	public void setYaddress(String yaddress) {
		this.yaddress = yaddress;
	}
	public String getYphone() {
		return yphone;
	}
	public void setYphone(String yphone) {
		this.yphone = yphone;
	}

	
}
