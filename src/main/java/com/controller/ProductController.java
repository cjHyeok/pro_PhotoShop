package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.ProductDTO;
import com.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService pservice;

	@RequestMapping("/productList") // 상품리스트 값 없을 때 나오게 하는거
	public ModelAndView productList(@RequestParam(value = "category_name", required = false) String category_name) {
		List<ProductDTO> plist = null;
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
	public ProductDTO productDetails(@RequestParam Map<String, String> map) {
		System.out.println("map 1=="+ map);
		
		
		ProductDTO pdto = pservice.productDetails(map);
		
		System.out.println("pD =" + pdto);
		
		
		
		return pdto;
	}
}
