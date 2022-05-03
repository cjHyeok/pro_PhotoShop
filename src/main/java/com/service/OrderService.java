package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderDAO;
import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;

@Service
public class OrderService {

	@Autowired
	OrderDAO odao;
	
	public List<CartDTO> cartList(MemberDTO dto) {
		List<CartDTO> list = odao.cartList(dto);
		return list;
	}
	public void orderDone(List<CartDTO> clist, MemberDTO mDTO) {
		odao.orderDone(clist, mDTO); 
		odao.delCart(mDTO); 
	}
	
	public List<OrderDTO> myAccount(MemberDTO dto) {
		List<OrderDTO> olist = odao.myAccount(dto);
		return olist;
	}
	

}
