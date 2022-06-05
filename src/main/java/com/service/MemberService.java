package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	MemberDAO mdao;
	
	public void memberAdd(MemberDTO m) { //회원가입
		mdao.memberAdd(m);
		
	}

	public MemberDTO login(MemberDTO memberDto) { //로그인
		MemberDTO dto = mdao.login(memberDto);
		return dto;
	}

	public MemberDTO idDuplicatedCheck(String user_id) {
		MemberDTO dto = mdao.idDuplicatedCheck(user_id);
		return dto;
	}

	public MemberDTO Account(String user_id) {
		MemberDTO dto = mdao.Account(user_id);
		return dto;
	}

	public void memberUpdate(MemberDTO mdto) {
		System.out.println("업데이트 서비스1 ===" + mdto);
		mdao.memberUpdate(mdto);
		System.out.println("업데이트 서비스2 ===" + mdto);
	}

}
