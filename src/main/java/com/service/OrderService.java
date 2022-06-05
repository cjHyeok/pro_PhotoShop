package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderDAO;
import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;
import com.dto.ReviewDTO;

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
	
	public List<OrderDTO> myAccountOrderList(MemberDTO dto) {
		List<OrderDTO> olist = odao.myAccountOrderList(dto);
		return olist;
	}
	public List<CartDTO> lastOrderCartList(MemberDTO mDTO) {
		List<CartDTO> list = odao.lastOrderCartList(mDTO);
		return list;
	}
	public void DirectOrderDone(List<CartDTO> clist, MemberDTO mDTO) {
		odao.orderDone(clist, mDTO); 
		odao.DirectDelCart(clist, mDTO);
	}
	public List<ReviewDTO> productReview(MemberDTO dto) {
		List<ReviewDTO> rlist = odao.productReview(dto);
		return rlist;
	}
	

}
