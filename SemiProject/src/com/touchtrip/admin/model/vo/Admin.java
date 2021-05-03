package com.touchtrip.admin.model.vo;

public class Admin {
	private int firstJoin;				// 오늘 날짜 기준 회원 가입 수
	private int secondJoin;		// 오늘 날짜 -1일 기준 회원 가입 수
	private int thirdJoin;			// ...
	private int fourthJoin;
	private int fifthJoin;
	private int sixthJoin;
	private int seventhJoin;		// 오늘 날짜 -6일 기준 회원 가입 수
	
	public Admin() {
		super();
	}

	public Admin(int firstJoin, int secondJoin, int thirdJoin, int fourthJoin, int fifthJoin,
			int sixthJoin, int seventhJoin) {
		super();
		this.firstJoin = firstJoin;
		this.secondJoin = secondJoin;
		this.thirdJoin = thirdJoin;
		this.fourthJoin = fourthJoin;
		this.fifthJoin = fifthJoin;
		this.sixthJoin = sixthJoin;
		this.seventhJoin = seventhJoin;
	}
	
	@Override
	public String toString() {
		return "Admin [firstJoin=" + firstJoin + ", secondJoin=" + secondJoin + ", thirdJoin=" + thirdJoin
				+ ", fourthJoin=" + fourthJoin + ", fifthJoin=" + fifthJoin + ", sixthJoin=" + sixthJoin
				+ ", seventhJoin=" + seventhJoin + "]";
	}

	public int getFirstJoin() {
		return firstJoin;
	}

	public void setFirstJoin(int firstJoin) {
		this.firstJoin = firstJoin;
	}

	public int getSecondJoin() {
		return secondJoin;
	}

	public void setSecondJoin(int secondJoin) {
		this.secondJoin = secondJoin;
	}

	public int getThirdJoin() {
		return thirdJoin;
	}

	public void setThirdJoin(int thirdJoin) {
		this.thirdJoin = thirdJoin;
	}

	public int getFourthJoin() {
		return fourthJoin;
	}

	public void setFourthJoin(int fourthJoin) {
		this.fourthJoin = fourthJoin;
	}

	public int getFifthJoin() {
		return fifthJoin;
	}

	public void setFifthJoin(int fifthJoin) {
		this.fifthJoin = fifthJoin;
	}

	public int getSixthJoin() {
		return sixthJoin;
	}

	public void setSixthJoin(int sixthJoin) {
		this.sixthJoin = sixthJoin;
	}

	public int getSeventhJoin() {
		return seventhJoin;
	}

	public void setSeventhJoin(int seventhJoin) {
		this.seventhJoin = seventhJoin;
	}
	
	
}
