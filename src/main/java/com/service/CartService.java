package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartDAO;
import com.dto.CartDTO;
import com.dto.MemberDTO;
@Service
public class CartService {

	@Autowired
	CartDAO cdao;
	
	public void cartAdd(CartDTO cart) {
		cdao.cartAdd(cart);
		
	}
	public List<CartDTO> cartList(MemberDTO dto) {
		List<CartDTO> clist = cdao.cartList(dto);
		return clist;
	}
	public void cartDelete(ArrayList<String> list) {
		cdao.cartDelete(list);
		
	}
	public void cartUpdate(Map<String, String> map) {
		cdao.cartUpdate(map);
		
	}
	
	public void wishCartadd(String product_id, String user_id) {
		System.out.println("wishCartadd 서비스");
		cdao.wishCartadd(product_id, user_id);
			
	}
	public boolean cartSelectUpdate(CartDTO cart) {
		return cdao.cartSelectUpdate(cart);
	}

}
