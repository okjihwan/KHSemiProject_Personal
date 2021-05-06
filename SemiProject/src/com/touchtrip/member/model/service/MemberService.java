package com.touchtrip.member.model.service;

import static com.touchtrip.common.JDBCTemplate.close;
import static com.touchtrip.common.JDBCTemplate.getConnection;
import static com.touchtrip.common.JDBCTemplate.commit;
import static com.touchtrip.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.touchtrip.member.model.dao.MemberDAO;
import com.touchtrip.member.model.vo.Member;

public class MemberService {

	private Connection con;
	private MemberDAO dao = new MemberDAO();
	
	public int insertMember(Member m) {
		con = getConnection();
		
		int result = dao.insertMember(con, m);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}


	public int idCheck(String userId) {
		con = getConnection();

		int result = dao.idCheck(con, userId);
		
		close(con);
				
		return result;
	}
	
	public int nickCheck(String nickName) {
		con = getConnection();

		int result = dao.nickCheck(con, nickName);
		
		close(con);
				
		return result;
	}


	public Member selectMember(Member loginMember) {
		con = getConnection();
		
		Member result = dao.selectMember(con, loginMember);
		
		close(con);
		
		return result;
	}



	
}








