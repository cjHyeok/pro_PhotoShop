package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartDTO {

	private int cart_id;
	private String user_id;
	private int product_id;
	private String cart_quantity;
	private Date cart_date;
}
