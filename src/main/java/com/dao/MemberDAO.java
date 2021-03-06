package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public void memberAdd(MemberDTO m) {
		int n = template.insert("MemberMapper.memberAdd", m);
		
	}

	public MemberDTO login(MemberDTO memberDto) {
		MemberDTO mdto = template.selectOne("MemberMapper.login", memberDto);
		return mdto;
	}

	public MemberDTO idDuplicatedCheck(String user_id) {
		MemberDTO mdto = template.selectOne("MemberMapper.idDuplicatedCheck", user_id);
		return mdto;
	}

	public MemberDTO Account(String user_id) {
		MemberDTO dto = template.selectOne("MemberMapper.Account", user_id);
		return dto;
	}

	public void memberUpdate(MemberDTO mdto) {
		
		template.update("MemberMapper.memberUpdate", mdto);
		
	}



}
