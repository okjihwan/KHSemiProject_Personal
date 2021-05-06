package com.touchtrip.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
	
	private static final long serialVersionUID = 999L;

	private int bno;			// 게시글 넘버
	private int btype; 			// 게시글 타입
	private String btitle; 		// 게시글 제목
	private	String bcontent;	// 댓글
	private String bwriter; 	// 게시글 작성자  nickname?
	private String userId;		// 작성자 아이디
	private int bcount;			// 게시글 조회수
	private String boardfile; 	// 게시글 파일
	private Date bdate;			// 작성 일자
	private String status;		// 파일 여부
	private String share_check; // 공유 여부
	
	public Board() {}

	public Board(int bno, int btype, String btitle, String bcontent, String bwriter, String userId, int bcount,
			String boardfile, Date bdate, String status, String share_check) {
		super();
		this.bno = bno;
		this.btype = btype;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.userId = userId;
		this.bcount = bcount;
		this.boardfile = boardfile;
		this.bdate = bdate;
		this.status = status;
		this.share_check = share_check;
	}
	
	public Board(String btitle, String bcontent, String bwriter, String boardfile) {
		super();
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.boardfile = boardfile;
	}
	
	@Override
	public String toString() {
		return "Board [bno=" + bno + ", btype=" + btype + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bwriter="
				+ bwriter + ", userId=" + userId + ", bcount=" + bcount + ", boardfile=" + boardfile + ", bdate="
				+ bdate + ", status=" + status + ", share_check=" + share_check + "]";
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getBtype() {
		return btype;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getBcount() {
		return bcount;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public String getBoardfile() {
		return boardfile;
	}

	public void setBoardfile(String boardfile) {
		this.boardfile = boardfile;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getShare_check() {
		return share_check;
	}

	public void setShare_check(String share_check) {
		this.share_check = share_check;
	}
	
	
	
}
