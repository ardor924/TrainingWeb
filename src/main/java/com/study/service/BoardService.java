package com.study.service;

import com.study.model.BoardDTO;

//springMVC 구조 : Controller > Service > DAO > DateBase
public interface BoardService { // Mapper에서 구현한 기능을 선언
	
	
	
	// 게시글전체 갯수
	public int totalCnt(BoardDTO boardDTO);
	
	
	// 게시글 삭제
	public int deleteSubject(BoardDTO boardDTO);
	
	

}
