package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;

@Repository
public class OrderDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<CartDTO> cartList(MemberDTO dto) {
		List<CartDTO> list = template.selectList("OrderMapper.cartList", dto);
		return list;
	}

	public void delCart(MemberDTO mDTO) {
		int n = template.delete("OrderMapper.delCart", mDTO);

	}

	public void orderDone(List<CartDTO> clist, MemberDTO mDTO) {
		System.out.println("ORDER DAO ==" + mDTO);
		int total_sum = 0; 
		for (int i = 0; i < clist.size(); i++) {
			CartDTO cDto = clist.get(i); 
			
			total_sum += cDto.getCart_quantity() * cDto.getProduct_price();
		}
		
		mDTO.setTotal_price(total_sum);
		
		template.insert("OrderMapper.orderInsert", mDTO); // mDTO order_id는 getOrder_id로 리턴

		for (int i = 0; i < clist.size(); i++) {
			CartDTO cDto = clist.get(i);

			OrderDTO oDto = new OrderDTO();
			oDto.setOrder_id(mDTO.getOrder_id());
			oDto.setProduct_id(cDto.getProduct_id());
			oDto.setOrder_quantity(cDto.getCart_quantity());
			oDto.setOrder_price(cDto.getProduct_price());

			template.insert("OrderMapper.orderDetailInsert", oDto);
		}

	}

	
	public List<OrderDTO> myAccount(MemberDTO dto) {
		List<OrderDTO> olist = template.selectList("MemberMapper.myAccount", dto);
		return olist;
	}

}
