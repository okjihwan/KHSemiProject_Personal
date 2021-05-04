package com.touchtrip.admin.model.service;

import java.sql.Connection;

import com.touchtrip.admin.model.dao.AdminDAO;
import com.touchtrip.admin.model.vo.Admin;

import static com.touchtrip.common.JDBCTemplate.*;

public class AdminService {

	private Connection con;
	private AdminDAO dao = new AdminDAO();

	public Admin countMemberJoin() {
		con = getConnection();
		
		Admin a = dao.countMemberJoin(con);
		
		close(con);
		
		return a;
	}

	public int countMemberWeek() {
		con = getConnection();
		
		int result = dao.countMemberWeek(con);
		
		close(con);
		
		return result;
	}

	public int[] getBar() {
		con = getConnection();
		
		int[] result = dao.getBar(con);
		
		close(con);
		
		return result;
	}

	public int[] checkGender(int ageValue) {
		con = getConnection();
		
		int[] arrayGender = dao.checkGender(con, ageValue);
		
		close(con);
		
		return arrayGender;
	}

	public int[] checkAge() {
		// TODO Auto-generated method stub
		return null;
	}

	public int[] checkPersonnel(int ageValue) {
		con = getConnection();
		
		int[] arrayPersonnel= dao.checkPersonnel(con, ageValue);
		
		close(con);
		
		return arrayPersonnel;
	}

	public int[] checkDay(int ageValue) {
		con = getConnection();
		
		int[] arrayDay= dao.checkDay(con, ageValue);
		
		close(con);
		
		return arrayDay;
	}

	// 성별 기준 연령대 분포도 확인
	public int[] checkGenderAge(int genderValue) {
		con = getConnection();
		
		int[] arrayGenderAge = dao.checkGenderAge(con, genderValue);
		
		close(con);
		
		return arrayGenderAge;
	}
}
