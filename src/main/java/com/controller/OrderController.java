package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
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
		System.out.println("/loginCheck/orderConfirm  controller 유저 아이디" + user_id);
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기

		List<CartDTO> clist = oservice.cartList(mDTO);

		int total = 0;
		int shipping = 0;
		// 1. clist에서 수량 가격 누적 합 구하기
		for (int i = 0; i < clist.size(); i++) {
			CartDTO cdto = clist.get(i);
			total += cdto.getProduct_price() * cdto.getCart_quantity();
		}

		// 2. 배송비
		if (total < 20000) {
			shipping = 2000;
		}

		// 3. 총합 금액 + 배송비
		total += shipping;

		System.out.println("/loginCheck/orderConfirm  controller  카트리스트 내용 주문페이지로 넘기기" + clist);
		xxx.addFlashAttribute("total", Integer.toString(total));
		xxx.addFlashAttribute("shipping", Integer.toString(shipping));
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); // request에 회원정보저장
		xxx.addFlashAttribute("DirectOrder", "false");

		return "redirect:../orderConfirm";

	}

	@RequestMapping(value = "/orderCreate", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8") // 전체
																												// 주문확인
	public @ResponseBody String orderCreate(HttpSession session, RedirectAttributes xxx,
			@RequestParam Map<String, String> map) {
		System.out.println("/loginCheck/orderDone controller == in");
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");

		String user_id = mDTO.getUser_id();
		
		System.out.println("ORDERcREATE/  MAP === " + map); 
		System.out.println("ORDERcREATE/  MAP === " + map.get("params"));

		List<CartDTO> clist = oservice.cartList(mDTO);
		
		
		/*
		 * if ("true".equals(map.get("DirectOrder")) ) {
		 * System.out.println("ORDERcREATE/  DirectOrder"); clist =
		 * oservice.lastOrderCartList(mDTO); }else { clist = oservice.cartList(mDTO); }
		 * System.out.println("ORDERcREATE/  clist === " + clist);
		 */
		

		OrderDTO odto = new OrderDTO();
		odto.setSend_user_name(map.get("send_user_name"));
		odto.setSend_post(map.get("send_post"));
		odto.setSend_address1(map.get("send_address1"));
		odto.setSend_address2(map.get("send_address2"));
		odto.setSend_address_detail(map.get("send_address_detail"));
		odto.setSend_phone(map.get("send_phone"));
		odto.setUser_id(user_id);
		odto.setTotal_price(Integer.parseInt(map.get("totalSum")));
		odto.setShipping(Integer.parseInt(map.get("shipping")));

		int orderId = oservice.orderDone(clist, odto, mDTO);
		
		
		System.out.println("orderCreate orderId ==" + orderId);
		return Integer.toString(orderId);
	}

	@RequestMapping("/orderDone") // 전체 주문확인
	public ModelAndView orderDone(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("/loginCheck/orderDone controller == in");
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");

		String user_id = mDTO.getUser_id();
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기

		System.out.println("mDTO==" + mDTO);
		System.out.println("orderDone Map = " + map);

		List<OrderDTO> olist = oservice.orderDoneList(map.get("order_id"));
		System.out.println("orderDone olist = " + olist);

		ModelAndView mav = new ModelAndView();
		mav.addObject("oList", olist);
		mav.addObject("mDTO", mDTO);

		return mav;

	}

	/*
	 * @RequestMapping("/orderDone") // 전체 주문확인 public String orderDone(HttpSession
	 * session, RedirectAttributes xxx,@RequestParam Map<String, String> map) {
	 * System.out.println("/loginCheck/orderDone controller == in"); MemberDTO mDTO
	 * = (MemberDTO) session.getAttribute("login");
	 * 
	 * String user_id = mDTO.getUser_id(); mDTO = mservice.Account(user_id); // 사용자
	 * 정보 가져오기
	 * 
	 * System.out.println("mDTO=="+ mDTO); System.out.println("orderDone Map = " +
	 * map);
	 * 
	 * List<OrderDTO> olist = oservice.orderDoneList(map.get("order_id"));
	 * System.out.println("orderDone olist = " + olist);
	 * 
	 * xxx.addFlashAttribute("oList", olist); xxx.addFlashAttribute("mDTO", mDTO);
	 * 
	 * return "redirect:../orderDone"; }
	 */
}
