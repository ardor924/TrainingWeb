package com.study.model;

import java.util.Date;

public class BoardDTO {

	private int bno;
	private String subject;
	private String writer;
	private String content;
	
	private Date regDate;
	private int hit;
	
	
	

	public BoardDTO() {}




	public BoardDTO(int bno, String subject, String writer, String content, Date regDate, int hit) {
		super();
		this.bno = bno;
		this.subject = subject;
		this.writer = writer;
		this.content = content;
		this.regDate = regDate;
		this.hit = hit;
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

	
	
	
	
	
}
