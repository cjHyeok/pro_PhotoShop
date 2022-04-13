package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.service.CartService;

@Controller
public class CartController {

	@Autowired
	CartService cservice;

	@RequestMapping("/loginCheck/cartAdd") // 카트에 추가
	public String cartAdd(CartDTO cart, HttpSession session) {
		System.out.println("***** cart ==" + cart);
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		cart.setUser_id(mDTO.getUser_id());
		cservice.cartAdd(cart);
		

		return "redirect:../cartList";

	}

	@RequestMapping("/cartList") // 장바구니
	public ModelAndView cartList(RedirectAttributes attr, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		
		String user_id = dto.getUser_id();
		System.out.println("user_id ====" + user_id);
		
		
		List<CartDTO> clist = cservice.cartList(dto);
		System.out.println("cartList===" + clist);
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", clist);
		mav.setViewName("cartList");

		return mav;

	}

	@RequestMapping(value="/loginCheck/cartDelete")//장바구니에서 삭제
	public @ResponseBody void cartDelte(@RequestParam("product_id") int product_id) {
		System.out.println("product_id==="+product_id);
		
		cservice.cartDelete(product_id);
	}
	
}
