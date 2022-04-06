package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService mservice;
	
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
	 
	

}
