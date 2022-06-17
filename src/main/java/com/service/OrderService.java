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
	public int orderDone(List<CartDTO> clist, OrderDTO odto, MemberDTO mDTO) {
		int orderId = odao.orderDone(clist, odto); 
		odao.delCart(mDTO); 
		return orderId;
	}
	
	public List<OrderDTO> myAccountOrderList(MemberDTO dto) {
		List<OrderDTO> olist = odao.myAccountOrderList(dto);
		return olist;
	}
	public List<CartDTO> lastOrderCartList(MemberDTO mDTO) {
		List<CartDTO> list = odao.lastOrderCartList(mDTO);
		return list;
	}
	public int DirectOrderDone(List<CartDTO> clist, OrderDTO odto, MemberDTO mDTO) {
		int orderId = odao.orderDone(clist, odto); 
		odao.DirectDelCart(clist, mDTO);
		return orderId;
	}
	public List<ReviewDTO> productReview(MemberDTO dto) {
		List<ReviewDTO> rlist = odao.productReview(dto);
		return rlist;
	}
	public List<OrderDTO> orderIdSearch(String order_id) {
		List<OrderDTO> olist= odao.orderIdSearch(order_id);
		return olist;
	}

	
	public void orderStateUpdate(String order_id , String state) {
		odao.orderStateUpdate(order_id, state);
		
	}
	
	public List<OrderDTO> orderDoneList(String order_id) {
		List<OrderDTO> olist = odao.orderDoneList(order_id);
		return olist;
	}

	

}
