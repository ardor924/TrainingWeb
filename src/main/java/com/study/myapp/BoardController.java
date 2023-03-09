package com.study.myapp;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.mapper.BoardMapper;

import com.study.model.BoardDTO;
import com.study.model.MemberDTO;


// 리팩토링 꼭 필요함
@Controller
public class BoardController {
	
	@Autowired BoardMapper boardMapper;
	
	
	@RequestMapping("writeBoardPage.do")
	public String writeBoardPage(Model model, MemberDTO mDto) {
		
		String memberName = mDto.getName();
		
		model.addAttribute("memberName", memberName);
		//---------------- 임시작업 - 이미지출력 START--------//
		model.addAttribute("banner1", "image/banner1.jpg");
		model.addAttribute("banner2", "image/banner2.jpg");
		model.addAttribute("banner3", "image/banner3.jpg");
		//임시프사		
		model.addAttribute("memberimage", "image/unknown.png");
		//---------------- 임시작업 - 이미지출력 END--------//
		
		return "board/write_subject";
	}
	

	// 게시글 불러오기_1
	@RequestMapping("webDevBoard_1.do")
	public String webDevBoard_1(Model model,BoardDTO boardDTO) {
		
		

		
		List<BoardDTO> bList = boardMapper.getAllSubjectList(boardDTO);
		
		model.addAttribute("bList", bList);
		//---------------- 임시작업 - 이미지출력 START--------//
		model.addAttribute("banner1", "image/banner1.jpg");
		model.addAttribute("banner2", "image/banner2.jpg");
		model.addAttribute("banner3", "image/banner3.jpg");
		//임시프사		
		model.addAttribute("memberimage", "image/unknown.png");
		//---------------- 임시작업 - 이미지출력 END--------//
		
		
		
		System.out.println("bList : "+bList.toString());
		
		
		return "board/web_board_1";
	}
	
	
	// 게시글 작성
	@RequestMapping("subjectInsert.do")
	public String subjectInsert(BoardDTO boardDTO) {
		
		Date regDate = new Date();
		boardDTO.setRegDate(regDate);
		
		int hit = 861;
		boardDTO.setHit(hit);
		
		boardMapper.subjectInsert(boardDTO);
		
		
		return "redirect:/webDevBoard_1.do";
	}
	
	
	// 게시글 보기
	@RequestMapping("subjectView.do")
	public String subjectView(Model model,BoardDTO boardDTO) {
		
		BoardDTO tbl = boardMapper.getSubject(boardDTO);
		
		
		model.addAttribute("tbl", tbl);
		
		return "board/view_subject"; 
	}
	
	
}
