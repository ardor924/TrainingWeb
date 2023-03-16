package com.study.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.model.BoardDTO;
import com.study.model.MemberDTO;

@Mapper
public interface BoardMapper {

	// 게시글 등록
	public int subjectInsert(BoardDTO boardDTO);

	
	// 게시글 전체 가져오기
	public List<BoardDTO> getAllSubjectList(BoardDTO boardDTO);
	
	// 게시글 목록 가져오기
	public List<BoardDTO> getSubjectList(BoardDTO boardDTO);
	
	
	
	// 게시글 작성일
	public String getSubjectRegDate(BoardDTO boardDTO);
	
	
	// 게시글 가져오기
	public BoardDTO getSubject(BoardDTO boardDTO);
	
	// 전체 게시글 개수
	public int totalCnt(BoardDTO boardDTO);
	
	
	// 게시글 삭제
	public int deleteSubject(BoardDTO boardDTO);
	
	
	// 조회수증가
	public int hitAdd(BoardDTO boardDTO);
	
	
}
