package com.touchtrip.admin.model.dao;

import static com.touchtrip.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.touchtrip.admin.model.vo.Admin;

public class AdminDAO {
	private Properties prop;
	
	public AdminDAO() {
		prop = new Properties();
		
		String filePath = AdminDAO.class.getResource("/properties/admin.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Admin countMemberJoin(Connection con) {
		Admin a = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		
		int first = 0;
		int second = 0;
		int third = 0;
		int fourth= 0;
		int fifth = 0;
		int sixth = 0;
		int seventh = 0;
		
		String sql = prop.getProperty("countMember");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				a = new Admin();
				
				a.setFirstJoin(rs.getInt(1));
				a.setSecondJoin(rs.getInt(2));
				a.setThirdJoin(rs.getInt(3));
				a.setFourthJoin(rs.getInt(4));
				a.setFifthJoin(rs.getInt(5));
				a.setSixthJoin(rs.getInt(6));
				a.setSeventhJoin(rs.getInt(7));
			}
			
			System.out.println(a);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return a;
	}

	public int countMemberWeek(Connection con) {
		int result = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("weekMember");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
				
				System.out.println(result);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}

	public int[] getBar(Connection con) {
		int[] result = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("getBar");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			int idx = 0;
			while(rs.next()) {
				result[idx] = rs.getInt(1);
				idx++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}

	public int[] checkGender(Connection con, int ageValue) {
		int[] arrayGender = new int[2];
		PreparedStatement ps = null;
		ResultSet rs = null;
		int index = 0;
		
		String sql = prop.getProperty("checkGender");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue+10);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				arrayGender[index] = rs.getInt(1);
				index++;
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGender;
	}

	public int[] checkPersonnel(Connection con, int ageValue) {
		int[] arrayPersonnel = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkPersonnel");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue+10);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				arrayPersonnel[index] = rs.getInt(3);
				index++;
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayPersonnel;
	}

	public int[] checkDay(Connection con, int ageValue) {
		int[] arrayDay = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkDay");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue+10);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				arrayDay[index] = rs.getInt(1);
				index++;
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayDay;
	}

	public int[] checkGenderAge(Connection con, int genderValue) {
		int[] arrayGenderAge = new int[5];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderAge");
		
		try {
			ps = con.prepareStatement(sql);
			if(genderValue == 1) ps.setString(1, "M");    // 해결!
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				for(int i = 0 ; i < 5 ; i++) {
					arrayGenderAge[index] = rs.getInt(index+1);
					index++;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderAge;
	}

}
