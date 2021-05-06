package com.touchtrip.Allplanner.map.model.vo;

import java.io.Serializable;

public class MapData implements Serializable {

	private static final long serialVersionUID = 827827L;  // 화이팅!
	
	private int atype;
	private String aname;
	private int fno;
	private String areatype;
	private String comp;
	private String address;
	private String phone;
	
	public MapData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MapData(int atype, String aname, int fno, String areatype, String comp, String address, String phone) {
		super();
		this.atype = atype;
		this.aname = aname;
		this.fno = fno;
		this.areatype = areatype;
		this.comp = comp;
		this.address = address;
		this.phone = phone;
	}

	public int getAtype() {
		return atype;
	}

	public String getAname() {
		return aname;
	}

	public int getFno() {
		return fno;
	}

	public String getAreatype() {
		return areatype;
	}

	public String getComp() {
		return comp;
	}

	public String getAddress() {
		return address;
	}
	

	public void setAtype(int atype) {
		this.atype = atype;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public void setAreatype(String areatype) {
		this.areatype = areatype;
	}

	public void setComp(String comp) {
		this.comp = comp;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MapData [atype=" + atype + ", aname=" + aname + ", fno=" + fno + ", areatype=" + areatype + ", comp="
				+ comp + ", address=" + address + ", phone=" + phone + "]";
	}



}
