package com.tripTouch.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member  implements Serializable {

	private static final long serialVersionUID = 1414L; // 으쌰으쌰!
	
	// 필드 변수
	private String userId;
	private int userType;
	private String userPwd;
	private String userName;
	private String nickName;
	private int age;
	private String gender;
	private String phone;
	private Date enrollDate; 
	private String status;

 
	// 생성자
	public Member() {}


	public Member(String userId, int userType, String userPwd, String userName, String nickName, int age, String gender,
			String phone, Date enrollDate, String status) {
		super();
		this.userId = userId;
		this.userType = userType;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.status = status;
	}


	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	// 메소드

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userType=" + userType + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", age=" + age + ", gender=" + gender + ", phone=" + phone
				+ ", enrollDate=" + enrollDate + ", status=" + status + "]";
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getUserType() {
		return userType;
	}


	public void setUserType(int userType) {
		this.userType = userType;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	
			
}	

	