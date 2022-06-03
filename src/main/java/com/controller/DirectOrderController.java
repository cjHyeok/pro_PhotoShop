package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.service.CartService;
import com.service.MemberService;
import com.service.OrderService;

@Controller
public class DirectOrderController {

	@Autowired
	MemberService mservice;

	@Autowired
	OrderService oservice;
	
	@Autowired
	CartService cservice;

	@RequestMapping("/loginCheck/DirectOrder") //  바로 주문하기
	public String DirectOrder(HttpSession session, CartDTO cart, RedirectAttributes xxx) {
		System.out.println("/loginCheck/DirectOrder  controller  DirectOrder ==" + cart);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		cart.setUser_id(mDTO.getUser_id());

		session.setAttribute("mesg", cart.getProduct_name());

		cservice.cartAdd(cart);

		List<CartDTO> clist = oservice.lastOrderCartList(mDTO);
		System.out.println("/loginCheck/DirectOrder  controller DirectOrder 카트리스트 내용 주문페이지로 넘기기"+clist);
		
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
		
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); // request에  회원정보저장
		xxx.addFlashAttribute("DirectOrder", "true"); /* orderconfirm.jsp 에서 if 쓰려고 */
		xxx.addFlashAttribute("total", Integer.toString(total));
		xxx.addFlashAttribute("shipping", Integer.toString(shipping));
		return "redirect:../orderConfirm"; 

	}
	
	
	@RequestMapping("/loginCheck/DirectOrderDone") // 전체 주문확인
	public String DirectOrderDone(HttpSession session, RedirectAttributes xxx) {
		System.out.println("/loginCheck/orderDone == in");
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		String user_id = mDTO.getUser_id();
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기

		System.out.println("/loginCheck/DirectOrderDone controller  mDTO=="+ mDTO);
		List<CartDTO> clist = oservice.lastOrderCartList(mDTO);
		
	
		oservice.DirectOrderDone(clist, mDTO);
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); 
		
		return "redirect:../orderDone";
	}

}
