package com.touchtrip.main.model.service;

import static com.touchtrip.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.touchtrip.main.model.dao.MainDAO;
import com.touchtrip.main.model.vo.MainAllFamous;
import com.touchtrip.main.model.vo.MainTop6Famous;

public class IntroToMainService {
	private Connection con;
	private MainDAO dao = new MainDAO();
	
	public ArrayList<MainTop6Famous> selectTop6Famous() {
		con = getConnection();
		
		ArrayList<MainTop6Famous> listTop6 = new ArrayList<>();
		
		listTop6 = dao.selectTop6Famous(con);
		
		return listTop6;
	}
	public ArrayList<MainAllFamous> selectAllFamous() {
		con = getConnection();
		
		ArrayList<MainAllFamous> listAll = new ArrayList<>();
		
		listAll = dao.selectAllFamous(con);
		
		return listAll;
	}
	
	public ArrayList<MainAllFamous> settingPage(int currentPage) {
		con = getConnection();
		
		ArrayList<MainAllFamous> listPage = dao.settingPage(con, currentPage);
		
		close(con);
		
		return listPage;
	}
	
	public int countPage() {
		con = getConnection();
		
		int countPage = dao.countPage(con);
		
		close(con);
		
		return countPage;
	}
	public ArrayList<MainAllFamous> selectArea(int value) {
		con = getConnection();
		
		ArrayList<MainAllFamous> listArea = dao.selectArea(con, value);
		
		close(con);
		
		return listArea;
	}
}
