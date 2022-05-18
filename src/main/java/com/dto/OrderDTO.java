package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderDTO {

	
	private int order_id;
	private int rnum;
	private String user_id;
	private Date order_date;
	private String payment;
	private String coupon_id;
	private String order_state;
	private int total_price;
	
	private int order_detail_id;
	private String product_id;
	private int order_quantity;
	private int order_price;
	
	private int address_id;
	private Date deliver_date;
	private String post;
	private String address1;
	private String address2;
	private String address_detail;

}
