package com.tripTouch.member.model.dao;

import static com.tripTouch.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.tripTouch.member.model.vo.Member;

public class MemberDAO {
	private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		// 파일 경로
		String filePath = MemberDAO.class
				         .getResource("/properties/member.properties")
				         .getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	public int insertMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement ps = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			ps = con.prepareStatement(sql);
			
			// 데이터베이스 숫자 시작은 1부터
			ps.setString(1, m.getUserId());
			// ps.setInt(2, m.getUserType());
			ps.setString(2, m.getUserPwd());
			ps.setString(3, m.getUserName());
			ps.setString(4, m.getNickName());
			ps.setInt(   5, m.getAge());
			ps.setString(6, m.getGender());
			ps.setString(7, m.getPhone());
			// ps.setDate(9, m.getEnrollDate());
			// ps.setString(10, m.getStatus());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}

	public int idCheck(Connection con, String userId) {
		int result = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, userId);
			
			rs = ps.executeQuery();
			
			if( rs.next() ) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}		
		
		return result;
	}

	public int nickCheck(Connection con, String nickName) {
		int result = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("nickCheck");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, nickName);
			
			rs = ps.executeQuery();
			
			if( rs.next() ) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}		
		
		return result;
	}

	public Member selectMember(Connection con, Member loginMember) {
		Member result = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			// 2. ps 에 준비한 쿼리 연결
			ps = con.prepareStatement(sql);
			
			// 3. sql ? 채우기
			ps.setString(1, loginMember.getUserId());
			ps.setString(2, loginMember.getUserPwd());
			
			// 4. rs (select 실행 결과) 받아오기
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result = new Member();
				
				result.setUserId(   	rs.getString(1));
				result.setUserType( 	rs.getInt(2));
				result.setUserPwd(  	rs.getString(3));
				result.setUserName( 	rs.getString(4));
				result.setNickName( 	rs.getString(5));
				result.setAge(      	rs.getInt(6));
				result.setGender(   	rs.getString(7));
				result.setPhone(    	rs.getString(8));
				result.setEnrollDate(  	rs.getDate(9));
				result.setStatus(    	rs.getString(10));
			}
			
			System.out.println("조회 결과 : " + result);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return result;
	}

}












