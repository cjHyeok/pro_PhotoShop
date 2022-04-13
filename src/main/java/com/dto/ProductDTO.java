package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO {

	private int product_id;
	private String product_name;
	private int product_category_id;
	private String product_description_summary;
	private int product_price;
	private int product_quantity;
	private int product_sales_quantity;
	private String product_sales_state;
	private int product_sales_price;
	private Date product_register_date;
	private String category_name;
	private int category_level;
	private int category_top_level;
	private String product_img;
	private String product_img_type;
	private String product_best;
	private String product_like;
	private String product_soldout;
	private String product_sub_img_1;
	private String product_sub_img_2;
	private String product_sub_img_3;
	private String product_sub_img_4;
	private String product_description;
	
	//카트 쪽 
	private int cart_id;
	private int cart_quantity;
}
