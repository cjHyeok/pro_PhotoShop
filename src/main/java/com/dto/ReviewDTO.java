package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewDTO {

	private int review_id;
	private String product_id;
	private Date review_date;
	private String user_name;
	private String review_content;
	private int review_like;
	private String product_name;
	private int order_id;
	private String product_img;
	private Date order_date;
	private String writeday;
}
