package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CartDTO;
import com.dto.MemberDTO;

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

	public void cartDelete(int product_id) {
		int n = template.delete("CartMapper.cartDelete", product_id);
		
	}

}
