package com.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ProductDTO;

@Repository
public class ProductDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public List<ProductDTO> productList(String category_name) {
		List<ProductDTO> plist = template.selectList("ProductMapper.productList", category_name);
		return plist;
	}

	public List<ProductDTO> productListAll() {
		List<ProductDTO> plist = template.selectList("ProductMapper.productListAll", 0);
		return plist;
	}


	public List<ProductDTO> productMainList() {
	List<ProductDTO> plist = template.selectList("ProductMapper.productMainList", 0);
	return plist;
}

	public ProductDTO productDetails(Map<String, String> map) {
		ProductDTO pdto = template.selectOne("ProductMapper.productDetails",map);
		return pdto;
	}



	
}