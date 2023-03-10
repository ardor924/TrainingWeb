package com.study.myapp;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.mapper.BoardMapper;
import com.study.model.BoardDTO;
import com.study.model.BoardPagingDTO;
import com.study.model.MemberDTO;
import com.study.service.BoardService;


// 리팩토링 꼭 필요함
@Controller
public class BoardController {
	
	@Autowired BoardMapper boardMapper;
	
	@Autowired private BoardService service;
	
	
	// 게시글작성 페이지
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
	public String webDevBoard_1(Model model, 
			@RequestParam(defaultValue = "1") int i,
			@RequestParam(defaultValue = "10") int cntPerPage,
			@ModelAttribute("boardDTO") BoardDTO boardDTO) {
		
		

		
		
		//---------------- 임시작업 - 이미지출력 START--------//
		model.addAttribute("banner1", "image/banner1.jpg");
		model.addAttribute("banner2", "image/banner2.jpg");
		model.addAttribute("banner3", "image/banner3.jpg");
		//임시프사		
		model.addAttribute("memberimage", "image/unknown.png");
		//---------------- 임시작업 - 이미지출력 END--------//
		
		int currentPage = i;				
		int totalCnt = service.totalCnt(boardDTO); // 게시판 전체 게시글
		System.out.println(totalCnt);
		
		BoardPagingDTO bp = new BoardPagingDTO(totalCnt, currentPage, cntPerPage);
		
		boardDTO.setInitPage(bp.getInitPage());
		
		System.out.println("initPage : "+bp.getInitPage());
		
		boardDTO.setCntPerPage(cntPerPage);
		
		model.addAttribute("bp", bp);
		
		List<BoardDTO> bList = boardMapper.getSubjectList(boardDTO);
		
		model.addAttribute("bList", bList);
		
		System.out.println("size : "+bList.size());
		
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

		
		boardMapper.hitAdd(tbl);
		
		//---------------- 임시작업 - 이미지출력 START--------//
		model.addAttribute("banner1", "image/banner1.jpg");
		model.addAttribute("banner2", "image/banner2.jpg");
		model.addAttribute("banner3", "image/banner3.jpg");
		//임시프사		
		model.addAttribute("memberimage", "image/unknown.png");
		//---------------- 임시작업 - 이미지출력 END--------//
		model.addAttribute("tbl", tbl);
		
		System.out.println("tbl : "+tbl);
		
		return "board/view_subject"; 
	}
	
	
	
	// 더미게시글 생성
	@RequestMapping("dummy.do")
	public String createDummySubject(BoardDTO boardDTO) {
		
		
		Date regDate = new Date();
		
		for(int dummy=1;dummy<=224;dummy++) {
			  
			  boardDTO.setBno(dummy);
			  boardDTO.setSubject("test"+dummy);
			  boardDTO.setWriter("admin");
			  boardDTO.setContent("contents");
			  boardDTO.setRegDate(regDate);
			  boardDTO.setHit(99);
			  boardMapper.subjectInsert(boardDTO);
			  }

		
		return "redirect:/webDevBoard_1.do";
	}
	
	
	
}
