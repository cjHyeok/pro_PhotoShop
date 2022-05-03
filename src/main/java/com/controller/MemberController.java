package com.controller;

import java.util.List;

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
import com.service.MemberService;
import com.service.OrderService;

@Controller
public class MemberController {

	@Autowired
	MemberService mservice;
	
	@Autowired
	OrderService oservice;
	
	@RequestMapping(value = "/memberAdd")
	
	public String memberAdd(MemberDTO m, Model model) {  //회원가입
		System.out.println("m =" + m);
		mservice.memberAdd(m);
		model.addAttribute("success", "회원 가입 성공"); //index.jsp 확인
		return "index";
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
	 

 
		@RequestMapping(value = "/myAccount")
		public ModelAndView myAccount(RedirectAttributes attr, HttpSession session) {
			MemberDTO dto = (MemberDTO) session.getAttribute("login");

			String user_id = dto.getUser_id();
			System.out.println(" /loginCheck/myAccount user_id ====" + user_id);

			List<OrderDTO> olist =oservice.myAccount(dto);
			System.out.println("orderList===" + olist);

			ModelAndView mav = new ModelAndView();
			mav.addObject("orderList", olist);
			mav.setViewName("myAccount");

			return mav;

		}

}
