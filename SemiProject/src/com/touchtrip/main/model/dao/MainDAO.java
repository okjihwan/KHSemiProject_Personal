package com.touchtrip.main.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.touchtrip.admin.model.dao.AdminDAO;
import com.touchtrip.main.model.vo.MainAllFamous;

import static com.touchtrip.common.JDBCTemplate.close;

public class MainDAO {
	private Properties prop;
	
	public MainDAO() {
		prop = new Properties();
		
		String filePath = AdminDAO.class.getResource("/properties/main.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	

	public int getList(Connection con) {
		int result = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				// 荑쇰━ �떎�뻾 �썑 泥ル쾲吏� 而щ읆�쓽 媛�
				result = rs.getInt(1);
				
				/* System.out.println(result); */
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}


	public ArrayList<MainAllFamous> selectAllFamous(Connection con) {
		ArrayList<MainAllFamous> listAll = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectAllFamous");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MainAllFamous m = new MainAllFamous();
				
				m.setfArea(rs.getString(1));
				m.setfName(rs.getString(2));
				m.setfAddress(rs.getString(3));
				m.setfPhone(rs.getString(4));
				m.setfReview(rs.getString(5));
				m.setfScore(rs.getDouble(6));
				
				listAll.add(m);
				
//				System.out.println(listAll);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return listAll;
	}

	public int countPage(Connection con) {
		int countPage = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectAllFamousCount");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				countPage = rs.getInt(1);
				
//				System.out.println(countPage);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return countPage;
	}

	public ArrayList<MainAllFamous> settingPage(Connection con, int currentPage) {
		ArrayList<MainAllFamous> listPage = new ArrayList<MainAllFamous>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("settingPage");
		
		int startRow = (currentPage - 1) * 8 + 1;
		int endRow = currentPage * 8;
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, endRow);
			ps.setInt(2, startRow);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MainAllFamous p = new MainAllFamous();
				
				p.setfArea(rs.getString("ANAME"));
				p.setfName(rs.getString("FNAME"));
				p.setfAddress(rs.getString("FADDRESS"));
				p.setfPhone(rs.getString("FPHONE"));
				p.setfReview(rs.getString("FRCONTENT"));
				p.setfScore(rs.getDouble("FRSCORE"));
				
				listPage.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return listPage;
	}



	public ArrayList<MainAllFamous> selectArea(Connection con, int value) {
		ArrayList<MainAllFamous> listArea = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectArea");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, value);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				MainAllFamous m = new MainAllFamous();
				
				m.setfArea(rs.getString("ANAME"));
				m.setfName(rs.getString("FNAME"));
				m.setfAddress(rs.getString("FADDRESS"));
				m.setfPhone(rs.getString("FPHONE"));
				m.setfReview(rs.getString("FRCONTENT"));
				m.setfScore(rs.getDouble("FRSCORE"));
				
				listArea.add(m);
				
//				System.out.println(listArea);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return listArea;
	}

}
