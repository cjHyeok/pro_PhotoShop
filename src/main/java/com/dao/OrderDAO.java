package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;
import com.dto.OrderStateDTO;
import com.dto.ReviewDTO;

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

	public int orderDone(List<CartDTO> clist,OrderDTO odto) {
		//System.out.println("ORDER DAO ==" + mDTO);
		//int total_sum = 0; 
		/*
		 * for (int i = 0; i < clist.size(); i++) { CartDTO cDto = clist.get(i);
		 * 
		 * //total_sum += cDto.getCart_quantity() * cDto.getProduct_price(); }
		 */
		
		 
		template.insert("OrderMapper.orderInsert", odto); // mDTO order_id는 getOrder_id로 리턴

		for (int i = 0; i < clist.size(); i++) {
			CartDTO cDto = clist.get(i);

			OrderDTO oDto = new OrderDTO();
			oDto.setOrder_id(odto.getOrder_id());
			oDto.setProduct_id(cDto.getProduct_id());
			oDto.setOrder_quantity(cDto.getCart_quantity());
			oDto.setOrder_price(cDto.getProduct_price());

			template.insert("OrderMapper.orderDetailInsert", oDto);
		}
		return odto.getOrder_id();

	}

	
	public List<OrderDTO> myAccountOrderList(MemberDTO dto) {
		List<OrderDTO> olist = template.selectList("MemberMapper.myAccountOrderList", dto);
		return olist;
	}

	public List<CartDTO> lastOrderCartList(MemberDTO mDTO) {
		List<CartDTO> list = template.selectList("DirectOrderMapper.lastOrderCartList", mDTO);
		return list;
	}


	public void DirectDelCart(List<CartDTO> clist, MemberDTO mDTO) {
		CartDTO cDto = null;
		for (int i = 0; i < clist.size(); i++) {
			cDto = clist.get(i);
			
		}	
		int n = template.delete("DirectOrderMapper.DirectDelCart", cDto.getCart_id());
	}

	public List<ReviewDTO> productReview(MemberDTO dto) {
		List<ReviewDTO> rlist = template.selectList("MemberMapper.productReview", dto);
		return rlist;
	}

	public List<OrderDTO> orderIdSearch(String order_id) {
		List<OrderDTO> olist = template.selectList("OrderMapper.orderIdSearch", order_id);
		return olist;
	}

	public void orderPaymentCompletedUpdate(String order_id) {
		template.update("OrderMapper.orderPaymentCompletedUpdate", order_id);
		
	}
	
	public void orderStateUpdate(String order_id , String state) {
		
		OrderStateDTO osDTO = new OrderStateDTO();
		osDTO.setOrder_id(order_id);
		osDTO.setOrder_state(state);
		
		template.update("OrderMapper.orderStateUpdate", osDTO );
		
	}

	public List<OrderDTO> orderDoneList(String order_id) {
		
		
		List<OrderDTO> olist = template.selectList("OrderMapper.orderDoneList", order_id);
		
		System.out.println("orderdao orderDoneList olist = " + olist);
		
		return olist;
	}

}
