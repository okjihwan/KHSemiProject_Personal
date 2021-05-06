package com.touchtrip.Allplanner.map.model.vo;

import java.io.Serializable;


public class Famous implements Serializable{

	private int fno;
	private int ftype;
	private int farea;
	private String fname;
	private String faddress;
	private String fphone;
	
   public Famous() {
	   super();
   }

public Famous(int fno, int ftype, int farea, String fname, String faddress, String fphone) {
	super();
	this.fno = fno;
	this.ftype = ftype;
	this.farea = farea;
	this.fname = fname;
	this.faddress = faddress;
	this.fphone = fphone;
}

@Override
public String toString() {
	return "Famous [fno=" + fno + ", ftype=" + ftype + ", farea=" + farea + ", fname=" + fname + ", faddress="
			+ faddress + ", fphone=" + fphone + "]";
}

public int getFno() {
	return fno;
}

public void setFno(int fno) {
	this.fno = fno;
}

public int getFtype() {
	return ftype;
}

public void setFtype(int ftype) {
	this.ftype = ftype;
}

public int getFarea() {
	return farea;
}

public void setFarea(int farea) {
	this.farea = farea;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getFaddress() {
	return faddress;
}

public void setFaddress(String faddress) {
	this.faddress = faddress;
}

public String getFphone() {
	return fphone;
}

public void setFphone(String fphone) {
	this.fphone = fphone;
}
   
   
   
   
   
}