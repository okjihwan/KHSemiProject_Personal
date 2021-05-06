package com.touchtrip.Allplanner.map.model.vo;

import java.io.Serializable;

public class Accommodation implements Serializable{

	private int ano;
	private int atype;
	private int aarea;
	private String aname;
	private String aaddress;
	private String aphone;
	
   public Accommodation() {
	   super();
   }

public Accommodation(int ano, int atype, int aarea, String aname, String aaddress, String aphone) {
	super();
	this.ano = ano;
	this.atype = atype;
	this.aarea = aarea;
	this.aname = aname;
	this.aaddress = aaddress;
	this.aphone = aphone;
}

@Override
public String toString() {
	return "Accommodation [ano=" + ano + ", atype=" + atype + ", aarea=" + aarea + ", aname=" + aname + ", aaddress="
			+ aaddress + ", aphone=" + aphone + "]";
}

public int getAno() {
	return ano;
}

public void setAno(int ano) {
	this.ano = ano;
}

public int getAtype() {
	return atype;
}

public void setAtype(int atype) {
	this.atype = atype;
}

public int getAarea() {
	return aarea;
}

public void setAarea(int aarea) {
	this.aarea = aarea;
}

public String getAname() {
	return aname;
}

public void setAname(String aname) {
	this.aname = aname;
}

public String getAaddress() {
	return aaddress;
}

public void setAaddress(String aaddress) {
	this.aaddress = aaddress;
}

public String getAphone() {
	return aphone;
}

public void setAphone(String aphone) {
	this.aphone = aphone;
}
 
   
   
}