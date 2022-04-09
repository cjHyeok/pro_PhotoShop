package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.MemberDTO;
import com.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService mservice;
	
	@RequestMapping(value = "/login",  method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		System.out.println("map = " + map);
		MemberDTO mdto = mservice.login(map);
		System.out.println("dto = " + mdto);
		
		
		if (mdto != null) {
			session.setAttribute("login", mdto);
			return "index";
		}else {
			model.addAttribute("mesg", "아이디 또는 비밀번호를 다시 확인해주세요.");
			return "loginForm";
		}
	}
	
	@RequestMapping(value="/loginCheck/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../";
	}
}
