package com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import com.dto.WishDTO;
import com.service.CartService;
import com.service.ProductService;
import com.service.WishService;

@Controller
public class WishController {

	@Autowired
	WishService wservice;
	
	@Autowired
	CartService cservice;
	
	@Autowired
	ProductService pservice;
/*
	@RequestMapping("/loginCheck/wishAdd") //위시리스트에 추가
	public String wishAdd(WishDTO wish, HttpSession session) {
		System.out.println("/loginCheck/wishAdd  controller  위시리스트에 추가 ==" + wish);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		wish.setUser_id(mDTO.getUser_id());

		session.setAttribute("mesg", wish.getProduct_name());

		wservice.wishAdd(wish);

		return "redirect:../wishList";

	}
*/
	
	@RequestMapping(value ="/loginCheck/wishAdd", method = RequestMethod.POST) 
	public  @ResponseBody String wishAdd(@RequestParam Map<String, String> map, HttpSession session) {
		System.out.println("/loginCheck/wishAdd controller map 1==" + map);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		
		WishDTO wish = new WishDTO();
		wish.setUser_id(mDTO.getUser_id());
		System.out.println("mDTO.getUser_id() =  " + mDTO.getUser_id());
		wish.setProduct_id(map.get("product_id"));
		System.out.println("/loginCheck/wishAdd controller1  pD =" + wish);
		
		if(map.get("user_id") == null) {
			map.put("user_id", mDTO.getUser_id());
		}
		
		if (!wservice.wishCheck(wish)) //위시리스트 체크해서 없을때
			wservice.wishAdd(wish); //위시리스트 추가
		else{
			wservice.wishUserDelete(wish);  //위시리스트 삭제
		}
		System.out.println("/loginCheck/wishAdd controller2  pD =" + map);
		
		 
		ProductDTO pdto = pservice.productDetails(map);
		System.out.println("/loginCheck/wishAdd controller3  pD =" + pdto);
		
		String retMsg = "";
		
		//retMsg += "wish_count=";
		retMsg += pdto.getWish_count(); //좋아요 갯수
		
		retMsg += ",";
		retMsg += pdto.getWish_my(); // 하트 
		
		
		System.out.println("/loginCheck/wishAdd controller wish=="+wish);
		return retMsg;
		
	}
	
	
	@RequestMapping("/loginCheck/wishCartadd") //위시리스트에 추가
	public String wishCartadd(@RequestParam("product_id") String product_id, HttpSession session) {
	
		System.out.println("/loginCheck/wishAdd  controller  위시리스트에서 카트리스트로 ==" + product_id);

		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		//cart.setUser_id(mDTO.getUser_id());

		//session.setAttribute("mesg", cart.getProduct_name());

		System.out.println("/loginCheck/wishAdd  controller  위시리스트에서 카트 userid ==" + mDTO.getUser_id());
		cservice.wishCartadd(product_id, mDTO.getUser_id());

		
		return "redirect:../cartList";
	}
	

	
	
	@RequestMapping("/wishList")  //리스트 출력
	public ModelAndView wishList(RedirectAttributes attr, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String user_id = dto.getUser_id();
		System.out.println("/wishList controller  user_id ====" + user_id);

		List<WishDTO> wlist = wservice.wishList(dto);
		System.out.println("/wishList controller  위시리스트 리스트 출력===" + wlist);

		
		ModelAndView mav = new ModelAndView();
		mav.addObject("wishList", wlist);
		mav.addObject("wlistSize", wlist.size());
		mav.setViewName("wishList");

		return mav;

	}
	

	
	@RequestMapping(value = "/loginCheck/wishDelete") 
	public @ResponseBody String wishDelte(@RequestParam("wish_id") ArrayList<String> list, HttpSession session) {
		System.out.println("wishDelete contorller list -" + list);
		wservice.wishDelete(list); // 삭제
		
		
		//위시리스트 상품없을 때 문구 나오게 하기
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		List<WishDTO> wlist = wservice.wishList(dto);
		return Integer.toString(wlist.size()); //위시리스트 상품없을 때 문구 나오게 하기 위해서  
											//리스트 개수 가져가려고 숫자를 문자열로 바꿔주고 String return 사용해서 사이즈 담음
											//삭제한다음 나오게하기위해서 삭제 ajax data 사용, data 0일때 출력
	}

	

}
