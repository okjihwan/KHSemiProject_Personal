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
			
//			System.out.println(a);
			
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
				
//				System.out.println(result);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}	
	
	// 연령 기준 인기 지역
	public int[] checkArea(Connection con, int ageValue) {
		int[] arrayArea = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;

		int index = 0;

		String sql = prop.getProperty("checkArea");

		try {
			ps = con.prepareStatement(sql);

			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue + 10);

			rs = ps.executeQuery();

			while (rs.next()) {
				arrayArea[index] = rs.getInt(2);
				index++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}

		return arrayArea;
	}

	// 연령 기준 인기 지역 이름
	public String[] checkAreaName(Connection con, int ageValue) {
		String[] arrayAreaName = new String[6];
		PreparedStatement ps = null;
		ResultSet rs = null;

		int index = 0;

		String sql = prop.getProperty("checkArea");

		try {
			ps = con.prepareStatement(sql);

			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue + 10);

			rs = ps.executeQuery();

			while (rs.next()) {
				arrayAreaName[index] = rs.getString(4);
				index++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}

		return arrayAreaName;
	}
	
	// 연령 기준 인기 명소
	public int[] checkFamous(Connection con, int ageValue) {
		int[] arrayFamous = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;

		int index = 0;

		String sql = prop.getProperty("checkFamous");

		try {
			ps = con.prepareStatement(sql);

			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue + 10);

			rs = ps.executeQuery();

			while (rs.next()) {
				arrayFamous[index] = rs.getInt(2);
				index++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}

		return arrayFamous;
	}
		
	public String[] checkFamousName(Connection con, int ageValue) {
		String[] arrayFamousName = new String[6];
		PreparedStatement ps = null;
		ResultSet rs = null;

		int index = 0;

		String sql = prop.getProperty("checkFamous");

		try {
			ps = con.prepareStatement(sql);

			ps.setInt(1, ageValue);
			ps.setInt(2, ageValue + 10);

			rs = ps.executeQuery();

			while (rs.next()) {
				arrayFamousName[index] = rs.getString(4);
				index++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}

		return arrayFamousName;
	}


	// 연령 기준 성별
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

	// 연령 기준 여행 인원
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
				for(int i = 0 ; i < 6 ; i++) {
					arrayPersonnel[index] = rs.getInt(index+1);
					index++;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayPersonnel;
	}

	// 연령 기준 여행 일수
	public int[] checkDay(Connection con, int ageValue) {
		int[] arrayGenderArea = new int[6];
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
				for(int i = 0 ; i < 6 ; i++) {
					arrayGenderArea[index] = rs.getInt(index+1);
					index++;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderArea;
	}
	
	// 성별 기준 인기 지역
	public int[] checkGenderArea(Connection con, int genderValue) {
		int[] arrayGenderAreaName = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderArea");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M");   
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				arrayGenderAreaName[index] = rs.getInt(2);
				index++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderAreaName;
	}

	// 성별 기준 인기 지역 이름
	public String[] arrayGenderAreaName(Connection con, int genderValue) {
		String[] arrayGenderAge = new String[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderArea");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M");   
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				arrayGenderAge[index] = rs.getString(4);
				index++;

			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderAge;
	}

	// 성별 기준 연령
	public int[] checkGenderAge(Connection con, int genderValue) {
		int[] arrayGenderAge = new int[5];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderAge");
		
		try {
			ps = con.prepareStatement(sql);
			if(genderValue == 1) ps.setString(1, "M");   
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

	// 성별 기준 여행 인원
	public int[] checkGenderPersonnel(Connection con, int genderValue) {
		int[] arrayGenderPersonnel = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderPersonnel");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M");  
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				for(int i = 0 ; i < 6 ; i++) {
					arrayGenderPersonnel[index] = rs.getInt(index+1);
					index++;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderPersonnel;
	}

	// 성별 기준 여행 일수
	public int[] arrayGenderDay(Connection con, int genderValue) {
		int[] arrayGenderDay = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderDay");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M"); 
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				for(int i = 0 ; i < 6 ; i++) {
					arrayGenderDay[index] = rs.getInt(index+1);
					index++;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return arrayGenderDay;
	}

	// 성별 기준 인기 명소
	public int[] checkGenderFamous(Connection con, int genderValue) {
		int[] checkGenderFamous = new int[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderFamous");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M");  
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				checkGenderFamous[index] = rs.getInt(2);
				index++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return checkGenderFamous;
	}
	
	// 성별 기준 인기 명소 이름
	public String[] checkGenderFomousName(Connection con, int genderValue) {
		String[] checkGenderFomousName = new String[6];
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int index = 0;
		
		String sql = prop.getProperty("checkGenderFamous");
		
		try {
			ps = con.prepareStatement(sql);
			
			if(genderValue == 1) ps.setString(1, "M");  
			else  ps.setString(1, "F");
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				checkGenderFomousName[index] = rs.getString(4);
				index++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return checkGenderFomousName;
	}

}
