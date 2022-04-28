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

	public MemberDTO login(Map<String, String> map) { //로그인
		MemberDTO dto = mdao.login(map);
		return dto;
	}

	public MemberDTO idDuplicatedCheck(String user_id) {
		MemberDTO dto = mdao.idDuplicatedCheck(user_id);
		return dto;
	}

	public MemberDTO myAccount(String user_id) {
		MemberDTO dto = mdao.myAccount(user_id);
		return dto;
	}

}
