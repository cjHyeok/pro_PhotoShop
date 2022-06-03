package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;
import com.dto.ReviewDTO;
import com.service.MemberService;
import com.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	MemberService mservice;
	
	@Autowired
	OrderService oservice;
	
	
	@RequestMapping("/loginCheck/orderConfirm") // 오더 전체 주문하기
	public String orderConfirm(HttpSession session, RedirectAttributes xxx) {
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		String user_id = mDTO.getUser_id();
		System.out.println("/loginCheck/orderConfirm  controller 유저 아이디"+user_id);
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기
		
		
		List<CartDTO> clist = oservice.cartList(mDTO);
		
		int total= 0;
		int shipping= 0;
		//1. clist에서 수량 가격 누적 합 구하기
		for(int i =0; i<clist.size(); i++) {
			CartDTO cdto = clist.get(i);
			total+= cdto.getProduct_price()*cdto.getCart_quantity();
		}
		
		//2. 배송비
		if (total < 20000) {
			shipping = 2000;
		}
		
		//3. 총합 금액 + 배송비
		total += shipping;
		
		
		
		
		System.out.println("/loginCheck/orderConfirm  controller  카트리스트 내용 주문페이지로 넘기기"+clist);
		xxx.addFlashAttribute("total", Integer.toString(total));
		xxx.addFlashAttribute("shipping", Integer.toString(shipping));
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); // request에 회원정보저장
		xxx.addFlashAttribute("DirectOrder", "false");
		
		
		
		return "redirect:../orderConfirm"; 

	}
	
	
	@RequestMapping("/loginCheck/orderDone") // 전체 주문확인
	public String orderDone(HttpSession session, RedirectAttributes xxx) {
		System.out.println("/loginCheck/orderDone controller == in");
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		String user_id = mDTO.getUser_id();
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기

		System.out.println("mDTO=="+ mDTO);
		List<CartDTO> clist = oservice.cartList(mDTO);
		
	
		oservice.orderDone(clist, mDTO);
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); 
		
		return "redirect:../orderDone";
	}
}
