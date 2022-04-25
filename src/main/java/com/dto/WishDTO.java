package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WishDTO {

	private int cart_id;
	private String user_id;
	private int product_id;
	private int cart_quantity;
	private Date cart_date;

	// 히든태그 카트로 넣을때 필요
	private String product_img;
	private String product_name;
	private int product_price;
	private String product_description_summary;

}
