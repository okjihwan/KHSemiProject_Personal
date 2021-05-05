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

	// 연령 기준 인기 지역
	public int[] checkArea(int ageValue) {
		con = getConnection();
		
		int[] arrayArea = dao.checkArea(con, ageValue);
		
		close(con);
		
		return arrayArea;
	}
	
	public String[] checkAreaName(int ageValue) {
		con = getConnection();
		
		String[] arrayAreaName = dao.checkAreaName(con, ageValue);
		
		close(con);
		
		return arrayAreaName;
	}
	
	// 연령 기준 인기 명소
	public int[] checkFamous(int ageValue) {
		con = getConnection();
		
		int[] arrayFamous= dao.checkFamous(con, ageValue);
		
		close(con);
		
		return arrayFamous;
	}
	
	// 연령 기준 인기 명소 이름
	public String[] checkFamousName(int ageValue) {
		con = getConnection();
		
		String[] arrayFamousName= dao.checkFamousName(con, ageValue);
		
		close(con);
		
		return arrayFamousName;
	}

	// 연령 기준 성별
	public int[] checkGender(int ageValue) {
		con = getConnection();
		
		int[] arrayGender = dao.checkGender(con, ageValue);
		
		close(con);
		
		return arrayGender;
	}

	// 연령 기준 여행 인원
	public int[] checkPersonnel(int ageValue) {
		con = getConnection();
		
		int[] arrayPersonnel= dao.checkPersonnel(con, ageValue);
		
		close(con);
		
		return arrayPersonnel;
	}

	// 연령 기준 여행 일수
	public int[] checkDay(int ageValue) {
		con = getConnection();
		
		int[] arrayDay= dao.checkDay(con, ageValue);
		
		close(con);
		
		return arrayDay;
	}
	
	// 성별 기준 인기 지역
	public int[] checkGenderArea(int genderValue) {
		con = getConnection();
		
		int[] arrayGenderArea = dao.checkGenderArea(con, genderValue);
		
		close(con);
		
		return arrayGenderArea;
	}

	// 성별 기준 인기 지역 이름
	public String[] arrayGenderAreaName(int genderValue) {
		con = getConnection();
		
		String[] arrayGenderAreaName = dao.arrayGenderAreaName(con, genderValue);
		
		close(con);
		
		return arrayGenderAreaName;
	}

	// 성별 기준 연령
	public int[] checkGenderAge(int genderValue) {
		con = getConnection();
		
		int[] arrayGenderAge = dao.checkGenderAge(con, genderValue);
		
		close(con);
		
		return arrayGenderAge;
	}

	// 성별 기준 여행 인원
	public int[] checkGenderPersonnel(int genderValue) {
		con = getConnection();
		
		int[] arrayGenderPersonnel = dao.checkGenderPersonnel(con, genderValue);
		
		close(con);
		
		return arrayGenderPersonnel;
	}

	// 성별 기준 여행 일수
	public int[] arrayGenderDay(int genderValue) {
		con = getConnection();
		
		int[] arrayGenderDay = dao.arrayGenderDay(con, genderValue);
		
		close(con);
		
		return arrayGenderDay;
	}

	// 성별 기준 인기 명소
	public int[] checkGenderFamous(int genderValue) {
		con = getConnection();
		
		int[] checkGenderFamous = dao.checkGenderFamous(con, genderValue);
		
		close(con);
		
		return checkGenderFamous;
	}

	// 성별 기준 인기 명소 이름
	public String[] checkGenderFamousName(int genderValue) {
		con = getConnection();
		
		String[] checkGenderFomousName = dao.checkGenderFomousName(con, genderValue);
		
		close(con);
		
		return checkGenderFomousName;
	}

}
