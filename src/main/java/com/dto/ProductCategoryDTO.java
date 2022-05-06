package com.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductCategoryDTO {

	private int product_category_id;
	private String category_name;
	private int category_level;
	private int category_top_level;
	
	
	
}
