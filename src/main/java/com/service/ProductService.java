package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAO;
import com.dto.CartDTO;
import com.dto.MemberDTO;
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

	public void ItemDelete(ArrayList<String> list) {
		pdao.ItemDelete(list);
		
	}

	public void ModifyUpdate(Map<String, String> map) {
		pdao.ModifyUpdate(map);
		
	}

	public List<ProductDTO> produtDetailList(MemberDTO dto) {
		List<ProductDTO> list = pdao.produtDetailList(dto);
		return list;
	}


	




}