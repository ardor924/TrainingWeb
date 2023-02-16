package com.study.myapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.mapper.MemberMapper;
import com.study.model.MemberDTO;

@Controller
public class MemberController {

	@Autowired MemberMapper memberMapper;
	
	// 회원등록 (페이지)
	@RequestMapping("memberRegisterPage.do")
	public String memberRegisterPage() {
		return "member/register_page";
	}
	
	// 회원등록 (실행)
	@RequestMapping("memberInsert.do")
	public String memberInsert(MemberDTO memberDTO) {
		
		memberMapper.memberRegister(memberDTO);
		
		return "redirect:/memberLoginPage.do";
	}
	
	// 로그인 (페이지)
	@RequestMapping("memberLoginPage.do")
	public String memberLoginPage() {
		
		return "member/login_page";		
		
	}
	
	
	
	// 로그인 (실행)
	@RequestMapping("memberLoginChk.do")
	public String memberLoginChk(Model model,HttpServletRequest req,HttpSession session ,MemberDTO memberDTO) {
		
		MemberDTO mDto = memberMapper.memberLogin(memberDTO);
		
		
		// DB에 회원정보가 있는지 체크
		
		// 회원정보 있는경우
		if(mDto != null) {
			
			String id = mDto.getId();
			String name = mDto.getName();
			
			model.addAttribute("id", id);
			model.addAttribute("name", name);
			
			// session.setAttribute("UserLoginInfo", "admin");			
			session.setAttribute("loginProcess", "Success");
			session.setAttribute("name", name);
				
			return "member/chk";
			
		}else {
			session.setAttribute("loginProcess", "Fail");
			return "member/login_page";
		}
	
	
	}
	
	// 회원목록(페이지)
	@RequestMapping("memberListPage.do")
	public String memberListPage(Model model,MemberDTO memberDTO) {
		
		List<MemberDTO> mList = memberMapper.memberList(memberDTO);
		
		model.addAttribute("mList", mList);
		
		
		return "member/list_page";
	}
	
	
}
