package com.study.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.mapper.BoardMapper;
import com.study.model.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired BoardMapper boardMapper;
	
	
	
	@Override
	public int totalCnt(BoardDTO boardDTO) {
		
		return boardMapper.totalCnt(boardDTO);
	}
	
	
}
