package com.study.myapp;

import java.util.Date;
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
		return "member/register_page(No Kakao API ver)";
	}
	
	// 회원등록 (실행)
	@RequestMapping("memberInsert.do")
	public String memberInsert(MemberDTO memberDTO) {
		
		
		Date regDate = new Date();
		
		
		/*
		 * 	[DTO에서 regDate가 String 타입의 SimpleDateFormat를 사용할때 - DB에서 형태 변경해 가져오는 용도]
		Date nowDate = new Date();
		 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd hh:mm"); String
		 * regDate = sdf.format(nowDate);
		 */
		
		
		memberDTO.setRegDate(regDate);
		
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
		String regDate = memberMapper.getMemberRegDate(memberDTO);
		
		
		
		
		
		// DB에 회원정보가 있는지 체크
		
		// 회원정보 있는경우
		if(mDto != null) {
			
			String id = mDto.getId();
			String name = mDto.getName();
			 
			
			
			session.setAttribute("isLogin", "yes"); //로그인 성공 여부 YES
			// session.setAttribute("UserLoginInfo", "admin");			
			session.setAttribute("loginProcess", "Success");
			session.setAttribute("memberId", id);
			session.setAttribute("memberName", name);
			
			
			session.setAttribute("memberRegDate", regDate);
				

			System.out.println("regDate : "+regDate);
			
		}else {
			session.setAttribute("loginProcess", "Fail");
			return "member/login_page";
		}
	
		return "redirect:/main.do";
	}
	
	
	// 로그아웃
	@RequestMapping("memberLogout.do")
	public String memberLogout(HttpSession session) {
		
		session.removeAttribute("isLogin");
		session.removeAttribute("LoginProcess");
		session.removeAttribute("memberId");
		session.removeAttribute("memberName");
		session.removeAttribute("isAccount");
		
		session.setAttribute("LogoutMsg","정상적으로 로그아웃처리 되었습니다.");
		
		
		return "redirect:/main.do";
	}
	
	
	// 회원목록(페이지)
	@RequestMapping("memberListPage.do")
	public String memberListPage(Model model,MemberDTO memberDTO) {
		
		List<MemberDTO> mList = memberMapper.memberList(memberDTO);
		
		model.addAttribute("mList", mList);
		
		System.out.println("mList : "+mList);
		
		
		return "member/list_page";
	}
	
	
}
