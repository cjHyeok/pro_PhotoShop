package com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.WishDTO;

@Repository
public class CartDAO {
	
	@Autowired
	SqlSessionTemplate template;

	public void cartAdd(CartDTO cart) {

		template.insert("CartMapper.cartAdd", cart);

	}

	public List<CartDTO> cartList(MemberDTO dto) {
		List<CartDTO> clist = template.selectList("CartMapper.cartList", dto);
		return clist;
	}

	public void cartDelete(ArrayList<String> list) {
		int n = template.delete("CartMapper.cartDelete", list);
		
	}

	public void cartUpdate(Map<String, String> map) {
		int n = template.update("CartMapper.cartUpdate", map);
		
	}

	
	public void wishCartadd(String product_id, String user_id) {
		
		System.out.println("wishCartadd dao");
		WishDTO wdto = new WishDTO();
		wdto.setUser_id(user_id);
		wdto.setProduct_id(Integer.parseInt(product_id));
		System.out.println("유저, 상품" + wdto);
		template.insert("CartMapper.wishCartadd", wdto);
		
	}

}
