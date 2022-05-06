package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAO;
import com.dto.ProductCategoryDTO;
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

	public ProductDTO productDetails(Map<String, String> map) {
		ProductDTO pdto = pdao.productDetails(map);
		return pdto;
	}

	public void productAdd(ProductDTO p) {
		pdao.productAdd(p);
		
	}

	public List<ProductCategoryDTO> category_List() {
		List<ProductCategoryDTO> clist = pdao.category_List();
		return clist;
	}




}