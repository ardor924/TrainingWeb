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
	
	
}
