package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.ProductCategoryDTO;
import com.dto.ProductDTO;
import com.dto.ReviewDTO;
import com.service.ProductService;
import com.service.ReviewService;

@Controller
public class ProductController {

	@Autowired
	ProductService pservice;

	@Autowired
	ReviewService rservice;
	
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
		System.out.println("plist =" + plist); // 리스트에서 가져오나 확인
		mav.setViewName("productList");

		return mav;

	}

	@RequestMapping("/") // 메인에서 상품 리스트 뜨도록
	public ModelAndView productMainList() {

		List<ProductDTO> plist = pservice.productMainList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", plist);
		System.out.println("mainplist =" + plist);
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
		System.out.println("pdto.getProduct_id() ==" + pdto.getProduct_id());
		System.out.println("product_id 2== "+ rlist);

		ModelAndView mav = new ModelAndView();
		mav.addObject("ReviewList", rlist);
		mav.addObject("productDetails", pdto);
		mav.setViewName("productDetails");

		return mav;
		
	}

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
		System.out.println("category_List =" + clist);
		mav.setViewName("productForm");

		return mav;

	}

}
