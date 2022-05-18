package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.dto.ReviewDTO;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO rdao;
	
	public List<ReviewDTO> ReviewList(String product_id) {
		System.out.println("product_id Service== "+ product_id);
		List<ReviewDTO> rlist = rdao.ReviewList(product_id);
		return rlist;
	}

	public void reviewWriteAdd(ReviewDTO r_DTO) {
		rdao.reviewWriteAdd(r_DTO);
		
	}

}
