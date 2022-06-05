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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.ProductDTO;
import com.dto.ReviewDTO;
import com.service.ProductService;
import com.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService rservice;
	
	@Autowired
	ProductService pservice;

	
	@RequestMapping(value = "reviewWriteAdd", produces = "text/plain;charset=UTF-8", method = RequestMethod.POST ) // 한글처리 코멘트 작성
	public @ResponseBody String recommend(@RequestParam("product_id") String product_id, @RequestParam("user_name") String user_name,
			@RequestParam("review_content") String review_content, @RequestParam Map<String, String> map) {

		System.out.println("product_id, user_name2, review_content3 ==  " + product_id + " " + user_name + "  " + review_content);

		ReviewDTO r_DTO = new ReviewDTO();
		r_DTO.setProduct_id(product_id);
		r_DTO.setUser_name(user_name);
		r_DTO.setReview_content(review_content);

		rservice.reviewWriteAdd(r_DTO);
		System.out.println("r_DTO reviewcontroller ===  "+r_DTO);
		
		ProductDTO pdto = pservice.productDetails(map);
		System.out.println("pdto reviewcontroller ===  "+pdto);
		
		List<ReviewDTO> rlist = rservice.ReviewList(pdto.getProduct_id());
		System.out.println("rlist reviewcontroller ===  "+rlist);
		
		
		
		String retData = "0";

		retData = "<table>";
		for (int i = 0; i < rlist.size(); i++) {
			ReviewDTO qdto = rlist.get(i);
			
			//div 태그 <div class="pro_review mb-5" id="reviewList">id넣어준 태그 아래로
			//retData로 하나하나 해줘야함

			retData +=  " <div class='review_details'>";
            retData +=  " <div class='review_info mb-2'>";
            retData +=  " <div class='product-rating mb-2'>";
            retData +=  " <i class='fa fa-star'></i>";
            retData +=  " <i class='fa fa-star'></i>";
            retData +=  " <i class='fa fa-star'></i>";
            retData +=  " <i class='fa fa-star-o'></i>";
            retData +=  " <i class='fa fa-star-o'></i>";
            retData +=  " </div>";
                             

            retData += "<h5>";
            retData += qdto.getUser_name(); 
            retData += "<span>";
            retData += qdto.getReview_date();
            retData += "</span>";
            retData += "</h5>";
                 
            retData += "</div>";
            retData += " <p>";
            retData += qdto.getReview_content();
            retData += "</p>";
            retData += "</div>";
		}
		retData += "</table>";

		System.out.println("review controller  retData=" + retData);

		return retData;
	}
	
	
	@RequestMapping("/reviewWrite") // 리뷰 쓰기
	@ModelAttribute("reviewWrite")
	public ModelAndView reviewWrite(@RequestParam Map<String, String> map) {
		System.out.println("reviewWrite controller map 1==" + map);

		ProductDTO pdto = pservice.productDetails(map);
		System.out.println("reviewWrite controller pD =" + pdto);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("productDetails", pdto);
		mav.addObject("order_id", map.get("order_id"));//맵안 order_id 가져오기
		mav.setViewName("reviewWrite");

		return mav;
		
	}
	
	@RequestMapping(value = "/reviewWriteAction", method = RequestMethod.POST)
	public String reviewWriteAction(ReviewDTO r) { 
		System.out.println("reviewWriteAction controller m =" + r);
		
		rservice.reviewWriteAction(r);
		
		return "reviewDone";
	}	
}
