package com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.ProductDTO;
import com.service.CartService;
import com.service.ProductService;

@Controller
public class CartController {

	@Autowired
	CartService cservice;

	@Autowired
	ProductService pservice;

	/*@RequestMapping("/loginCheck/cartAdd") // 카트에 추가
	public String cartAdd(CartDTO cart, HttpSession session) {
		System.out.println("/loginCheck/cartAdd controller cart ==" + cart);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		cart.setUser_id(mDTO.getUser_id());

		session.setAttribute("mesg", cart.getProduct_name());

		cservice.cartAdd(cart);

		return "redirect:../cartList";

	}*/
	
	@RequestMapping(value ="/loginCheck/cartAdd", method = RequestMethod.POST) 
	public  @ResponseBody String cartAdd(@RequestParam Map<String, String> map, HttpSession session) {
		System.out.println("/loginCheck/cartAdd controller map 1==" + map);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		CartDTO cart = new CartDTO();
		cart.setUser_id(mDTO.getUser_id());
		
		
		cart.setProduct_img( map.get("product_img") );
		cart.setProduct_name(map.get("product_name"));
		cart.setProduct_description_summary(map.get("product_description_summary"));
		cart.setProduct_id(map.get("product_id")); 
		cart.setCart_quantity(Integer.parseInt(map.get("cart_quantity")));

		cart.setProduct_id(map.get("product_id"));
		
		if (!cservice.cartSelectUpdate(cart)) {
			
			cservice.cartAdd(cart); 
		}
		
		
		

		
		
		
		System.out.println("/loginCheck/cartAdd controller cart=="+cart);
		return "true";
		
	}
	
	
	@RequestMapping(value ="/loginCheck/cartAddDirect", method = RequestMethod.POST)  
	public  @ResponseBody String cartAddDirect(@RequestParam Map<String, String> map, HttpSession session) {
		System.out.println("/loginCheck/cartAddDirect controller map 1==" + map);
		
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		CartDTO cart = new CartDTO();
		cart.setUser_id(mDTO.getUser_id());
		cart.setProduct_id(map.get("product_id")); 
		
		ProductDTO pdto = pservice.productDetails(map);
		
		cart.setProduct_img( pdto.getProduct_img() );
		cart.setProduct_name(pdto.getProduct_name());
		cart.setProduct_description_summary(pdto.getProduct_description_summary());
		
		cart.setCart_quantity(1);
		
		cservice.cartAdd(cart); 
		
		System.out.println("/loginCheck/cartAddDirect controller cart=="+cart);
		return "true";
		
	}

	@RequestMapping("/cartList") // 장바구니
	public ModelAndView cartList(RedirectAttributes attr, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String user_id = dto.getUser_id();
		System.out.println("/cartList controller  user_id ====" + user_id);

		List<CartDTO> clist = cservice.cartList(dto);
		System.out.println("/cartList controller  cartList===" + clist);

		ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", clist);
		mav.setViewName("cartList");

		return mav;

	}

	
	
	@RequestMapping(value = "/loginCheck/cartDelete") // 장바구니에서
	public @ResponseBody void cartDelte(@RequestParam("cart_id") ArrayList<String> list) {
		System.out.println("/loginCheck/cartDelete controller list ---" + list);
		cservice.cartDelete(list); // 삭제

	}

	@RequestMapping(value = "/loginCheck/cartUpdate") // 장바구니 수정
	@ResponseBody
	public void cartUpdate(@RequestParam Map<String, String> map) {
		System.out.println("/loginCheck/cartUpdate controller == " + map);
		cservice.cartUpdate(map);
	}

}
