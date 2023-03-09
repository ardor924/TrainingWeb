package com.study.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.model.MemberDTO;

@Mapper
public interface MemberMapper {

	// 회원등록()
	public int memberRegister(MemberDTO memberDTO);
		
	// 로그인 ()
	public MemberDTO memberLogin(MemberDTO memberDTO);
	
	// 회원목록()
	public List<MemberDTO> memberList(MemberDTO memberDTO);
	
	
	
	
	
	// 회원가입일() 멤버리스트 가져올때 Date로 가져와도 되지만 String으로도 가져올수 있음(sql Mapper에서 따로 형식지정해서 불러옴)
	public String getMemberRegDate(MemberDTO memberDTO);
	
	
}
