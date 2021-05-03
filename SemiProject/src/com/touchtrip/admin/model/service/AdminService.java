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
}
