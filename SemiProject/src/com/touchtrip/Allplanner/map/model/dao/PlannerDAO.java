package com.touchtrip.Allplanner.map.model.dao;

import static com.touchtrip.Allplanner.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.touchtrip.Allplanner.map.model.vo.Accommodation;
import com.touchtrip.Allplanner.map.model.vo.Famous;
import com.touchtrip.Allplanner.map.model.vo.MapData;
import com.touchtrip.Allplanner.map.model.vo.Yummy;

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

	public ArrayList<Yummy> selectYummyList(Connection con, int value) {
		ArrayList<Yummy> yummyList = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet rs = null;
	 
		
		String sql = prop.getProperty("yummyList");
		
		try {
			ps = con.prepareStatement(sql);
		   
			rs = ps.executeQuery();
		  
			while(rs.next()) {
				
				Yummy a= new Yummy();
				
				a.setYname(rs.getString("yname"));
				a.setYphone(rs.getString("yphone"));
				a.setYaddress(rs.getString("yaddress"));
			
				yummyList.add(a);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		

		return yummyList;

	}

/*	public ArrayList<Area> selectSearchAreaList(Connection con) {
		 ArrayList<Area> areaSearch = new ArrayList<>();
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 
		 String sql = prop.getProperty("searchArea");
		 
		 try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Area b = new Area();
				
				b.setAname(rs.getString("aname"));
				
				System.out.println(b);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		   
		
		return areaSearch;
	} */

	public ArrayList<Famous> selectFamousList(Connection con) {
		ArrayList<Famous> famousList = new ArrayList<>();
		PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    String sql = prop.getProperty("famousList");
	    
	    try {
	    	
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Famous c = new Famous();
				
				c.setFname(rs.getString("fname"));
				c.setFphone(rs.getString("fphone"));
				c.setFaddress(rs.getString("faddress"));
				
				famousList.add(c);
				
			}
			
	    } catch (SQLException e) {

			e.printStackTrace();
		}
		
		return famousList;
	}

	public ArrayList<Accommodation> selectAccomoList(Connection con) {
		ArrayList<Accommodation> accommoList = new ArrayList<>();
		PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    String sql = prop.getProperty("accommodationList");
	    
	    try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Accommodation d = new Accommodation();
				
				d.setAname(rs.getString("aname"));
				d.setAphone(rs.getString("aphone"));
				d.setAaddress(rs.getString("aaddress"));
				
				accommoList.add(d);
				
				System.out.println(d);
				
			}
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	    
		return accommoList;
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


	}

	
