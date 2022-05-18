package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ReviewDTO;
@Repository
public class ReviewDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<ReviewDTO> ReviewList(String product_id) {
		System.out.println("product_id DAO== "+ product_id);
		List<ReviewDTO> rlist = template.selectList("ReviewMapper.ReviewList", product_id);
		System.out.println("product_id rlist== "+ rlist);
		return rlist;
	}

	public void reviewWriteAdd(ReviewDTO r_DTO) {
		System.out.println("r_dto dao"+ r_DTO);
		int n = template.insert("ReviewMapper.reviewWriteAdd", r_DTO);
		
	}

}
