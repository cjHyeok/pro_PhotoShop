package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dao.WishDAO;
import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.WishDTO;

@Service
public class WishService {

	@Autowired
	WishDAO wdao;
	
	
	public void wishAdd(WishDTO wish) {
		wdao.wishAdd(wish);
		
	}
	public List<WishDTO> wishList(MemberDTO dto) {
		List<WishDTO> wlist = wdao.wishList(dto);
		return wlist;
	}
	public void wishDelete(ArrayList<String> list) {
		
		wdao.wishDelete(list);
		
	}

	public boolean wishCheck(WishDTO wish) {
		return wdao.wishCheck(wish);
		
	}
	public void wishUserDelete(WishDTO wish) {
		wdao.wishUserDelete(wish);
		
	}
	
	
	
	
}
