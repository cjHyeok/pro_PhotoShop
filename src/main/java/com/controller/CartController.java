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


	
	@RequestMapping(value ="/loginCheck/cartAdd", method = RequestMethod.POST) 
	public  @ResponseBody String cartAdd(@RequestParam Map<String, String> map, HttpSession session) {
		System.out.println("/loginCheck/cartAdd controller map 1==" + map);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		CartDTO cart = new CartDTO();
		cart.setUser_id(mDTO.getUser_id()); //mDTO에서
		
		cart.setProduct_img( map.get("product_img")); //맵에서 
		cart.setProduct_name(map.get("product_name"));
		cart.setProduct_description_summary(map.get("product_description_summary"));
		cart.setProduct_id(map.get("product_id")); 
		cart.setCart_quantity(Integer.parseInt(map.get("cart_quantity")));

		cart.setProduct_id(map.get("product_id"));
		
		if (!cservice.cartSelectUpdate(cart)) {//카트에 확인해서 없으면 카트에 추가 ; 있으면 dao 에서 for문 돌려서 수량 증가
			
			cservice.cartAdd(cart); 
		}
		
		
		List<CartDTO> clist = cservice.cartList(mDTO);
		
		String retMsg = "";  //미니카트 카운트
		
		retMsg += "<a href='./cartList' class='minicart-btn toolbar-btn'> <i class='ion-bag'></i>";
		retMsg += "<span class='cart-item_count' id='cartSize'>" +clist.size() + "</span></a>"; 
		retMsg += "<div class='cart-item-wrapper dropdown-sidemenu dropdown-hover-2'>"; 
			
		for(int i=0; i< clist.size(); i++ ) {
			
			CartDTO cartData = clist.get(i);
			
			retMsg += "<div class='single-cart-item'><div class='cart-img'>";
			retMsg += "	<a href='./productDetails?product_id="+cartData.getProduct_id()+"'>";
			retMsg += "	<img src='assets/images/"+cartData.getProduct_img()+"' alt=''></a>";
			retMsg += "</div>";
			retMsg += "<div class='cart-text'>";
			retMsg += "	<h5 class='title'>";
			retMsg += "		<a href='./productDetails?product_id="+cartData.getProduct_id()+"'>"+cartData.getProduct_name()+"</a>";
			retMsg += "	</h5>";
			retMsg += "</div></div>";
			
		} 
			
		retMsg += "<!-- 총합 -->";
		retMsg += "<div class='cart-price-total d-flex justify-content-between'>";
		retMsg += "	<div class='cart-links d-flex justify-content-center'>";
		retMsg += "	<a class='obrien-button white-btn' href='./cartList'>장바구니</a> <a class='obrien-button white-btn' href='./loginCheck/orderConfirm'>구매하기</a>";
		retMsg += "	</div>";
		retMsg += "	</div>";
			
		retMsg += "</div>"; 
		
		
		
		
		  
		session.setAttribute("cartList", clist);
		session.setAttribute("cartSize", Integer.toString(clist.size()));
		
		System.out.println("/loginCheck/cartAdd controller cart=="+cart);
		System.out.println("/loginCheck/cartAdd controller cart size =="+clist.size());
		
		return retMsg;
		
	}
	
	
	@RequestMapping(value ="/loginCheck/cartAddDirect", method = RequestMethod.POST,produces="text/plain;charset=UTF-8")  //상품 목록안 카트 넣기
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
		
		List<CartDTO> clist = cservice.cartList(mDTO);  
		session.setAttribute("cartList", clist);
		session.setAttribute("cartSize", Integer.toString(clist.size()));		
		
		System.out.println("** /loginCheck/cartAddDirect controller cart=="+cart);
		System.out.println("** /loginCheck/cartAddDirect controller cart size =="+clist.size());
		
		String retMsg = ""; 
		
		retMsg += "<a href='./cartList' class='minicart-btn toolbar-btn'> <i class='ion-bag'></i>";
		retMsg += "<span class='cart-item_count' id='cartSize'>" +clist.size() + "</span></a>"; 
		retMsg += "<div class='cart-item-wrapper dropdown-sidemenu dropdown-hover-2'>"; 
			
		for(int i=0; i< clist.size(); i++ ) {
			
			CartDTO cartData = clist.get(i);
			
			retMsg += "<div class='single-cart-item'><div class='cart-img'>";
			retMsg += "	<a href='./productDetails?product_id="+cartData.getProduct_id()+"'>";
			retMsg += "	<img src='assets/images/"+cartData.getProduct_img()+"' alt=''></a>";
			retMsg += "</div>";
			retMsg += "<div class='cart-text'>";
			retMsg += "	<h5 class='title'>";
			retMsg += "		<a href='./productDetails?product_id="+cartData.getProduct_id()+"'>"+cartData.getProduct_name()+"</a>";
			retMsg += "	</h5>";
			retMsg += "</div></div>";
			
		} 
			
		retMsg += "<!-- 총합 -->";
		retMsg += "<div class='cart-price-total d-flex justify-content-between'>";
		retMsg += "	<div class='cart-links d-flex justify-content-center'>";
		retMsg += "	<a class='obrien-button white-btn' href='./cartList'>장바구니</a> <a class='obrien-button white-btn' href='./loginCheck/orderConfirm'>구매하기</a>";
		retMsg += "	</div>";
		retMsg += "	</div>";
			
		retMsg += "</div>"; 
		
		return retMsg;
		
		
		
		
	}

	@RequestMapping("/cartList") // 장바구니
	public ModelAndView cartList(RedirectAttributes attr, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String user_id = dto.getUser_id();
		System.out.println("/cartList controller  user_id ====" + user_id);

		List<CartDTO> clist = cservice.cartList(dto);
		System.out.println("/cartList controller  cartList===" + clist);
		
		session.setAttribute("cartList", clist);

		ModelAndView mav = new ModelAndView();
		mav.addObject("cartList", clist);
		mav.setViewName("cartList");

		return mav;

	}

	
	
	@RequestMapping(value = "/loginCheck/cartDelete") // 장바구니에서
	public @ResponseBody void cartDelte(@RequestParam("cart_id") ArrayList<String> list, HttpSession session) {
		System.out.println("/loginCheck/cartDelete controller list ---" + list);
		cservice.cartDelete(list); // 삭제
		
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		List<CartDTO> clist = cservice.cartList(dto);
		session.setAttribute("cartList", clist);

	}

	@RequestMapping(value = "/loginCheck/cartUpdate") // 장바구니 수정
	@ResponseBody
	public void cartUpdate(@RequestParam Map<String, String> map) {
		System.out.println("/loginCheck/cartUpdate controller == " + map);
		cservice.cartUpdate(map);
	}

}
