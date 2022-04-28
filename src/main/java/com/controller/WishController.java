package com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.WishDTO;
import com.service.CartService;
import com.service.WishService;

@Controller
public class WishController {

	@Autowired
	WishService wservice;
	
	@Autowired
	CartService cservice;

	@RequestMapping("/loginCheck/wishAdd") //위시리스트에 추가
	public String wishAdd(WishDTO wish, HttpSession session) {
		System.out.println("위시리스트에 추가 ==" + wish);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		wish.setUser_id(mDTO.getUser_id());

		session.setAttribute("mesg", wish.getProduct_name());

		wservice.wishAdd(wish);

		return "redirect:../wishList";

	}

	@RequestMapping("/loginCheck/wishCartadd") //위시리스트에 추가
	public String wishCartadd(@RequestParam("product_id") String product_id, HttpSession session) {
	
		System.out.println("위시리스트에서 카트리스트로 ==" + product_id);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		//cart.setUser_id(mDTO.getUser_id());

		//session.setAttribute("mesg", cart.getProduct_name());

		System.out.println("위시리스트에서 카트 userid ==" + mDTO.getUser_id());
		cservice.wishCartadd(product_id, mDTO.getUser_id());

		/*
		 * List<CartDTO> clist = cservice.cartList(mDTO);
		 * System.out.println("cartList===" + clist);
		 * 
		 * ModelAndView mav = new ModelAndView(); mav.addObject("cartList", clist);
		 * mav.setViewName("cartList");
		 * 
		 * return mav;
		 */
		return "redirect:../cartList";
	}
	

	
	
	
	@RequestMapping("/wishList")  //리스트 출력
	public ModelAndView wishList(RedirectAttributes attr, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String user_id = dto.getUser_id();
		System.out.println("user_id ====" + user_id);

		List<WishDTO> wlist = wservice.wishList(dto);
		System.out.println("위시리스트 리스트 출력===" + wlist);

		ModelAndView mav = new ModelAndView();
		mav.addObject("wishList", wlist);
		mav.setViewName("wishList");

		return mav;

	}

	
	
	@RequestMapping(value = "/loginCheck/wishDelete") 
	public @ResponseBody void wishDelte(@RequestParam("wish_id") ArrayList<String> list) {
		System.out.println("delete list -" + list);
		wservice.wishDelete(list); // 삭제

	}

	

}
