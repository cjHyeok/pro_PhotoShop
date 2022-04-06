package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAO;
import com.dto.ProductDTO;

@Service
public class ProductService {

	@Autowired
	ProductDAO pdao;
	public List<ProductDTO> productList(String category_name) {
		List<ProductDTO> plist = pdao.productList(category_name);
		return plist;
	}
	public List<ProductDTO> productListAll() {
		List<ProductDTO> plist = pdao.productListAll();
		return plist;
	}

	public List<ProductDTO> productMainList() {
	List<ProductDTO> plist = pdao.productMainList();
	return plist;
}
}