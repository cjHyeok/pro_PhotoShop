package com.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.OrderDTO;
import com.dto.ProductDTO;
import com.dto.ReviewDTO;
import com.dto.WishDTO;
import com.service.MemberService;
import com.service.OrderService;
import com.service.WishService;

@Controller
public class MemberController {

	@Autowired
	MemberService mservice;
	
	@Autowired
	OrderService oservice;

	@Autowired
	WishService wservice;
	
	@RequestMapping(value = "/memberAdd", method = RequestMethod.POST)
	public String memberAdd(MemberDTO m, Model model) {  //회원가입
		System.out.println("/memberAdd\" controller m =" + m);
		 
			
			String encrypted;
				try {
					encrypted = CryptoUtil.md5(m.getUser_pw());
					System.out.println("AES-256 : enc - " + encrypted);
					
					m.setUser_pw(encrypted);
					
				} catch (NoSuchAlgorithmException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				 
		
		mservice.memberAdd(m);
		
		
		//model.addAttribute("success", "회원 가입 성공"); //index.jsp 확인
		return "welcomeForm";
	}
	
	 

	
	 @RequestMapping(value = "/idDuplicate", method = RequestMethod.GET ,produces = "text/plain;charset=UTF-8")//아이디 중복검사
	 @ResponseBody
	  public String idDuplicate(@RequestParam("user_id") String user_id) {
		  System.out.println("user_id = " + user_id); 
		  MemberDTO mdto =mservice.idDuplicatedCheck(user_id);
	 
		  System.out.println("user_id == " + user_id);
			String mesg = "사용가능";
			if (mdto != null) {
				mesg = "사용불가";
			}
			return mesg;
		}
	 

 
		@RequestMapping(value = "/myAccount")  //주문 내역 확인 부분
		public ModelAndView myAccount(RedirectAttributes attr, HttpSession session) {
			MemberDTO dto = (MemberDTO) session.getAttribute("login");

			String user_id = dto.getUser_id();
			System.out.println(" /loginCheck/myAccount controller user_id ====" + user_id);

			List<OrderDTO> olist =oservice.myAccountOrderList(dto); //주문
			System.out.println("/myAccount  controller  orderList===" + olist);

			List<ReviewDTO> rlist = oservice.productReview(dto); //리뷰
			System.out.println("/myAccount controller  productReview===" + rlist);
			
			
			
			
			
			List<WishDTO> wlist = wservice.wishList(dto); //위시리스트
			System.out.println("/myAccount controller  위시리스트 리스트 출력===" + wlist);
			
			
			
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("orderList", olist);
			mav.addObject("productReview", rlist);
			
			mav.addObject("wishList", wlist);
			mav.addObject("wlistSize", wlist.size());
			mav.setViewName("myAccount");

			return mav;

		}
		
		
		
		
		
		@RequestMapping(value = "/memberUpdate" , method=RequestMethod.POST) // 회원정보수정
		public String memberUpdate(MemberDTO mdto, HttpSession session) {
			
			System.out.println("멤버업데이트 =="+ mdto);
			
			
			mservice.memberUpdate(mdto);
			System.out.println(" /memberUpdate  controller ====" + mdto);
			session.setAttribute("login", mdto);
			session.setAttribute("mesg", "비밀번호가 변경되었습니다.");
			
			return "myAccount";
		}

}
