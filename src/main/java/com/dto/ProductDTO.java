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
	private String product_explanation;
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
}
