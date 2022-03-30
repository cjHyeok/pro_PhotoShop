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

	public MemberDTO login(Map<String, String> map) {
		MemberDTO mdto = template.selectOne("MemberMapper.login", map);
		return mdto;
	}

	public MemberDTO idDuplicatedCheck(String user_id) {
		MemberDTO mdto = template.selectOne("MemberMapper.idDuplicatedCheck", user_id);
		return mdto;
	}



}
