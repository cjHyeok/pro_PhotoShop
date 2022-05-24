package com.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ProductCategoryDTO;
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

	public void productAdd(ProductDTO p) {
		System.out.println("productAdd ProductDTO p  1 ===" + p);
		int n = template.insert("ProductMapper.productAdd", p);
		
		System.out.println("productAdd ProductDTO p  2 ===" + p);
	}

	public List<ProductCategoryDTO> category_List() {
		int category_level=2;
		List<ProductCategoryDTO> clist = template.selectList("ProductMapper.category_List", category_level);
		return clist;
	}

	public void ItemDelete(ArrayList<String> list) {
		int n = template.delete("ProductMapper.ItemDelete", list);
		int m = template.delete("ProductMapper.ItemImgDelete", list);
		
	}

	public void ModifyUpdate(Map<String, String> map) {
		int n = template.update("ProductMapper.ModifyUpdate", map);
		int m = template.update("ProductMapper.ModifyImgUpdate", map);
		
		
	}

	



	
}