package com.touchtrip.Allplanner.map.model.service;

import java.sql.Connection;
import java.util.ArrayList;


import com.touchtrip.Allplanner.map.model.dao.PlannerDAO;
import com.touchtrip.Allplanner.map.model.vo.MapData;
import static com.touchtrip.Allplanner.common.JDBCTemplate.*;

public class MapService {
	
	private Connection con;
	private PlannerDAO dao = new PlannerDAO();

	
	public ArrayList<MapData> searchDate(String type, String keyword) {
		con = getConnection();
		
		ArrayList<MapData> mapList = dao.searchData(con, type, keyword);
		
		close(con);
		
		return mapList;
	}

	
}
