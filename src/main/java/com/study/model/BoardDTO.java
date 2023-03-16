package com.study.model;

import java.util.Date;

public class BoardDTO {

	private int bno;
	private String subject;
	private String writer;
	private String content;
	
	private Date regDate;
	private int hit;
	
	
	// 페이징
	private int initPage; // 시작 페이지(1 또는 0)
	private int cntPerPage; // 한 페이지당 게시글 수(10개)
	
	
	// 게시판 정렬
	private String orderBy; // 게시판 정렬
	
	
	// 게시판 검색
	private String searchType; // 작성자 제목 내용 검색
	private String keyWord; // 검색키워드

	public BoardDTO() {}

	public BoardDTO(int bno, String subject, String writer, String content, Date regDate, int hit, int initPage,
			int cntPerPage, String orderBy, String searchType, String keyWord) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.regDate = regDate;
		this.hit = hit;
		this.initPage = initPage;
		this.cntPerPage = cntPerPage;
		this.orderBy = orderBy;
		this.searchType = searchType;
		this.keyWord = keyWord;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getInitPage() {
		return initPage;
	}

	public void setInitPage(int initPage) {
		this.initPage = initPage;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}


	
	
	
	
	
}
