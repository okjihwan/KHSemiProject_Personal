package com.touchtrip.Allplanner.map.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;


import com.touchtrip.Allplanner.map.model.dao.PlannerDAO;
import com.touchtrip.Allplanner.map.model.vo.Accommodation;
import com.touchtrip.Allplanner.map.model.vo.Famous;
import com.touchtrip.Allplanner.map.model.vo.MapData;
import com.touchtrip.Allplanner.map.model.vo.Yummy;
import static com.touchtrip.Allplanner.common.JDBCTemplate.*;

public class MapService {
	
	private Connection con;
	private PlannerDAO dao = new PlannerDAO();

	public ArrayList<Yummy> firstYummy(int value) {
		con = getConnection();
		
		ArrayList<Yummy> yummylist = dao.selectYummyList(con, value);
			
		close(con);
		
		
		return yummylist;
	}


	/*public ArrayList<Area> areaSearch() {
		con = getConnection();
		
		ArrayList<Area> searchArea = dao.selectSearchAreaList(con);
		
		close(con);
		
		
		return searchArea;
	}*/


	public ArrayList<Famous> buttonFamous() {
		con = getConnection();
		
		ArrayList<Famous> famousList = dao.selectFamousList(con);
		
		close(con);
		
		return famousList;
	}


	public ArrayList<Accommodation> buttonAccommodation() {
		con = getConnection();
		
		ArrayList<Accommodation> AccoList = dao.selectAccomoList(con);
		
		close(con);
		
		
		return AccoList;
	}


	public ArrayList<MapData> searchDate(String type, String keyword) {
		con = getConnection();
		
		ArrayList<MapData> mapList = dao.searchData(con, type, keyword);
		
		close(con);
		
		return mapList;
	}


	public ArrayList<MapData> getSelectData() {
		// TODO Auto-generated method stub
		return null;
	}








		
}
