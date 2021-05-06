package com.touchtrip.Allplanner.map.model.dao;

import static com.touchtrip.Allplanner.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.touchtrip.Allplanner.map.model.vo.MapData;


public class PlannerDAO {
	
	private Properties prop;
	
	public PlannerDAO() {
		prop = new Properties();
		
		String filePath = PlannerDAO.class
						  .getResource("/properties/planner.properties")
						  .getPath();
		
		try {
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}


	public ArrayList<MapData> searchData(Connection con, String type, String keyword) {
		ArrayList<MapData> mapList = new ArrayList<>();
		PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    String sql = null;
	    if(type.equals("전체")) sql = prop.getProperty("searchMapListALL");  // l하고 i하고 헷갈리면 그냥 L 대문자 쓰는 경우도 있어요
	    else sql = prop.getProperty("searchMapList");
	    
	    try {
			ps = con.prepareStatement(sql);
			
			if(type.equals("전체")) {
				ps.setString(1, keyword);
				ps.setString(2, keyword);
			} else {
				ps.setString(1, keyword);
				ps.setString(2, keyword);
				ps.setString(3, type);
		    }
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MapData d = new MapData();
				
				d.setAtype( rs.getInt( "ATYPE" ) );
				d.setAname( rs.getString( "ANAME" ) );
				d.setFno( rs.getInt( "FNO" ) );
				d.setAreatype( rs.getString( "AREATYPE" ) );
				d.setComp( rs.getString( "COMP" ) );
				d.setAddress( rs.getString( "ADDRESS" ) );
				d.setPhone(rs.getString("PHONE"));
				
				System.out.println(d);
				
				mapList.add(d);
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	    
		return mapList;
	}


	public ArrayList<MapData> goToPlan(Connection con, String type, String includedData) {
		ArrayList<MapData> movingList = new ArrayList<>();
		PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    
		return null;
	}


	}

	
