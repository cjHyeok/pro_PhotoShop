package com.controller;

import java.lang.ProcessBuilder.Redirect;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dto.CartDTO;
import com.dto.MemberDTO;
import com.dto.ProductCategoryDTO;
import com.dto.ProductDTO;
import com.dto.ReviewDTO;
import com.service.MemberService;
import com.service.OrderService;
import com.service.ProductService;
import com.service.ReviewService;

@Controller
public class ProductController {

	@Autowired
	ProductService pservice;

	@Autowired
	ReviewService rservice;

	@Autowired
	MemberService mservice;
	
	@Autowired
	OrderService oservice;
	
	@RequestMapping("/productList") // 상품리스트 값 없을 때 나오게 하는거
	public ModelAndView productList(@RequestParam(value = "category_name", required = false) String category_name) {
		List<ProductDTO> plist = null;
		System.out.println("category_name =" + category_name);
		if (category_name == null) {
			plist = pservice.productListAll();
		} else {
			plist = pservice.productList(category_name);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", plist);
		mav.addObject("category_name", category_name);
		System.out.println("/productList plist =" + plist); // 리스트에서 가져오나 확인
		mav.setViewName("productList");

		return mav;

	}

	@RequestMapping("/") // 메인에서 상품 리스트 뜨도록
	public ModelAndView productMainList() {

		List<ProductDTO> plist = pservice.productMainList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", plist);
		System.out.println("main plist =" + plist);
		mav.setViewName("index");

		return mav;

	}

	@RequestMapping("/productDetails") // 상품 상세페이지
	@ModelAttribute("productDetails")
	public ModelAndView productDetails(@RequestParam Map<String, String> map) {
		System.out.println("map 1==" + map);

		ProductDTO pdto = pservice.productDetails(map);
		System.out.println("pD =" + pdto);
		
		List<ReviewDTO> rlist = rservice.ReviewList(pdto.getProduct_id());
		System.out.println("/productDetails pdto.getProduct_id() ==" + pdto.getProduct_id());
		System.out.println("/productDetails product_id 2== "+ rlist);

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("ReviewCount", rlist.size());
		mav.addObject("ReviewList", rlist);
		
		mav.addObject("productDetails", pdto);
		mav.setViewName("productDetails");

		return mav;
		
	}
	
/*
	@RequestMapping("/loginCheck/productDetail_Order") // 오더 전체 주문하기
	public String orderConfirm(HttpSession session, RedirectAttributes xxx) {
		MemberDTO mDTO = (MemberDTO) session.getAttribute("login");
		String user_id = mDTO.getUser_id();
		System.out.println("유저 아이디"+user_id);
		mDTO = mservice.Account(user_id); // 사용자 정보 가져오기
		
		
		List<ProductDTO> clist = oservice.cartList(mDTO);
		
		System.out.println("/loginCheck/productDetail_Order controller = "+clist);
		xxx.addFlashAttribute("cList", clist);
		xxx.addFlashAttribute("mDTO", mDTO); // request에 회원정보저장
		
		return "redirect:../orderConfirm"; 

	}
	*/
	
	
	
	
	

	@RequestMapping("/productForm")
	public ModelAndView productForm() {
		
		List<ProductCategoryDTO> clist = pservice.category_List();
		ModelAndView mav = new ModelAndView();
		mav.addObject("category_List", clist);
		System.out.println("category_List =" + clist);
		mav.setViewName("productForm");

		return mav;

	}

	@RequestMapping("/productAdd")
	public ModelAndView productForm(ProductDTO p, Model model) {
		System.out.println("ProductDTO p =" + p);

		pservice.productAdd(p);

		List<ProductCategoryDTO> clist = pservice.category_List();
		ModelAndView mav = new ModelAndView();
		mav.addObject("category_List", clist);
		System.out.println("/productAdd category_List =" + clist);
		mav.setViewName("productForm");

		return mav;

	}
	
	
	@RequestMapping("/productItem")
	public ModelAndView productItem(@RequestParam(value = "category_name", required = false) String category_name, HttpSession session) {
		
			List<ProductDTO> pitem = null;
			System.out.println("/productItem category_name =" + category_name);
			if (category_name == null) {
				pitem = pservice.productListAll(); //카테고리 네임이 따로 없으면 전체 부르기
			} else {
				pitem = pservice.productList(category_name); //있으면 그 카테고리 네임 부르기 를 응용해서 검색할때 상품 이름으로 넣어주고 새로 컨트롤러에 만들기 mapper에는 where절 like이용해서 찾도록
			}
			/*
			session.setAttribute("product_id", pitem);
			System.out.println("pitem===" + pitem);
			List<ProductDTO> pList = (List<ProductDTO>) session.getAttribute("product_id");
			*/
			List<ProductCategoryDTO> clist = pservice.category_List();
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("category_List", clist);
			mav.addObject("productItem", pitem);
			System.out.println("/productItem pitem =" + pitem); // 리스트에서 가져오나 확인
			mav.setViewName("productItem");

			return mav;
	}
	
	@RequestMapping(value = "/loginCheck/ItemDelete") // 장바구니에서
	public @ResponseBody void ItemDelete(@RequestParam("product_id") ArrayList<String> list) {
		
		
		System.out.println("/loginCheck/ItemDelete delete product_id ---" + list);
		
		pservice.ItemDelete(list); // 삭제
		
		//return "redirect:/productItem";

	}
	
	
	@RequestMapping("/productModify") // 상품 수정 페이지 
	@ModelAttribute("productModify")
	public ModelAndView productModify(@RequestParam Map<String, String> map) {
		System.out.println("productModify  controller  map 1==" + map);

		ProductDTO modto = pservice.productDetails(map);
		System.out.println("/productModify controller  modto pD =" + modto);
		
		List<ProductCategoryDTO> clist = pservice.category_List(); //선택 박스 리스트 나오게 하는거
		System.out.println("/productModify controller  clist==" + clist);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("category_List", clist);
		mav.addObject("productModify", modto);

		return mav;
		
	}
	
	@RequestMapping(value = "/loginCheck/ModifyUpdate") // 상품 수정
	public String ModifyUpdate(@RequestParam Map<String, String> map) {
		System.out.println("ModifyUpdate controller  before" + map); //맵은 변수로 만들어져있음 modifyUpdate.jsp에 그래서 form 누르면 정보 넘어옴
		pservice.ModifyUpdate(map);
		System.out.println("ModifyUpdate controller  after" + map);
		
		return "redirect:/productItem";
		
	}
}