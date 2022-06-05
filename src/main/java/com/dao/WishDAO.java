package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.dto.MemberDTO;
import com.dto.WishDTO;

@Repository
public class WishDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public void wishAdd(WishDTO wish) {

		template.insert("WishMapper.wishAdd", wish);

	}

	public List<WishDTO> wishList(MemberDTO dto) {
		List<WishDTO> wlist = template.selectList("WishMapper.wishList", dto);
		return wlist;
	}

	public void wishDelete(ArrayList<String> list) {
		int n = template.delete("WishMapper.wishDelete", list);
		
	}

	public boolean wishCheck(WishDTO wish) {
		List<WishDTO> wlist = template.selectList("WishMapper.wishCheck", wish);
		if(wlist.size() > 0) {
			return true;
		}
		return false;
	}


}
