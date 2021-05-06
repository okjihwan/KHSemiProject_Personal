package com.touchtrip.board.model.dao;

import static com.touchtrip.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.touchtrip.board.model.vo.Board;

public class BoardDAO {
	
	private Properties prop;
	
	public BoardDAO() {
		prop = new Properties();
		
		String filePath = BoardDAO.class
						  .getResource("/properties/board.properties")
						  .getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Board> selectList(Connection con, int currentPage) {
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectList");
	
		int startRow = (currentPage - 1) * 10 + 1;
		int endRow = currentPage * 10;
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, endRow);
			ps.setInt(2, startRow);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Board b = new Board();
				b.setBno( rs.getInt("bno") );
				b.setBtype( rs.getInt("btype"));
				b.setBtitle(rs.getString("btitle"));
				b.setBcontent(rs.getString("bcontent"));
				b.setBwriter( rs.getString("bwriter"));
				b.setBdate( rs.getDate("bdate"));
				b.setBoardfile(rs.getString("boardfile"));
				b.setBcount( rs.getInt("bcount"));
				
				list.add(b);
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}

	public int insertBoard(Connection con, Board b) {
		int result = 0;
		PreparedStatement ps = null;
		
		String sql = prop.getProperty("insertBoard");
		
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, b.getBtype());
			ps.setString(2, b.getBtitle());
			ps.setString(3, b.getBcontent());
			ps.setString(4, b.getBwriter());
			ps.setString(5, b.getBoardfile());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(ps);
		}
			
		return result;
	}

	public Board selectOne(Connection con, int bno) {
		Board b = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				b = new Board();
				
				b.setBno(bno);
				b.setBtype( rs.getInt("btype"));
				b.setBtitle(rs.getString("btitle"));
				b.setBcontent(rs.getString("bcontent"));
				b.setBwriter(rs.getString("bwriter"));
				b.setBdate( rs.getDate("bdate"));
				b.setBoardfile( rs.getString("boardfile"));
				b.setBcount(rs.getInt("bcount"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
				
		return b;
	}

	public int updateReadCount(Connection con, int bno) {
		int result = 0; // 결과를 담기 위한 변수
						
		PreparedStatement ps = null; // SQL 실행을 위한 객체
		
		String sql = prop.getProperty("updateReadCount"); // 실행할 SQL
		// properties
		
		try {
			// sql로 ps 만들기 
			ps = con.prepareStatement(sql);
			
			// ? 채우기
			ps.setInt(1, bno);
			
			// SQL 실행!
			// .executeQuery() : SELECT
			// .executeUpdate() : INSERT / UPDATE / DELETE
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();  
			// 에러 메시지
			
		} finally {
			close(ps);
		}
		
		return result; // 결과를 서비스로
	}

	public int updateBoard(Connection con, Board b) {
		int result = 0;
		PreparedStatement ps = null;
		
		String sql = prop.getProperty("updateBoard");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, b.getBtitle());
			ps.setString(2, b.getBcontent());
			ps.setString(3, b.getBoardfile());
			ps.setInt(4, b.getBno());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			
			close(ps);
		}
		
		return result;
	}

	public int deleteBoard(Connection con, int bno) {
		int result = 0;
		PreparedStatement ps = null;
		
		String sql = prop.getProperty("deleteBoard");
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, bno);
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(ps);
		}
		
		return result;
	}

	public int getListCount(Connection con) {
		int result = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = prop.getProperty("listCount");
		
		try {
			ps = con.prepareStatement(sql);
			
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

	public ArrayList<Board> selectTop5(Connection con) {
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectTop5");
		
		try {
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Board b = new Board();
				
				b.setBno( rs.getInt("bno"));
				b.setBtype( rs.getInt("btype"));
				b.setBtitle(rs.getString("btitle"));
				b.setBcontent(rs.getString("bcontent"));
				b.setBwriter(rs.getString("username"));
				b.setUserId(rs.getString("bwriter"));
				b.setBcount(rs.getInt("bcount"));
				b.setBoardfile( rs.getString("boardfile"));
				b.setBdate( rs.getDate("bdate"));
				
				list.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(ps);
		}
		
		return list;
	}
	
}
