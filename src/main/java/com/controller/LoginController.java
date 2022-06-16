package com.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.service.CartService;
import com.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService mservice;
	
	@Autowired
	CartService cservice;
	
	@RequestMapping(value = "/login",  method = RequestMethod.POST) //로그인 , +비밀번호 암호화
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session, RedirectAttributes attr) {
		System.out.println("/login map = " + map);
		
		System.out.println("/login session=  "+ session);
		System.out.println("/login attr=  "+ attr);
		
		String encrypted = "";
		
		try {
			
		  encrypted = CryptoUtil.md5(map.get("user_pw"));
	
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
		
		MemberDTO memberDto = new MemberDTO();
		memberDto.setUser_id(map.get("user_id"));
		memberDto.setUser_pw(encrypted); 
		System.out.println("MemberDTO  " + memberDto);
		
		MemberDTO mdto = mservice.login(memberDto);
		System.out.println("로그인 dto = " + mdto);
		
		List<CartDTO> clist = cservice.cartList(mdto);
		System.out.println("/로그인 controller  cartList===" + clist);
		
		
		/*
		 * String uri = (String)session.getAttribute("clickLink");
		 * System.out.println("/로그인 controller  uri ========>   " + uri);
		 * 
		 */		
		
		if (mdto != null) {
			session.setAttribute("login", mdto);
			
			session.setAttribute("user_id", mdto.getUser_id());
			session.setAttribute("cartList", clist);
			
			/*
			 * if(!uri.isEmpty()) { session.setAttribute("clickLink", ""); return
			 * "redirect:./productDetails";
			 * 
			 * }
			 */
			return "redirect:./";
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
