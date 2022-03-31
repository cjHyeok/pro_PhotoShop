package com.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString
public class MemberDTO {
	
	private String user_id;
	private String user_pw;
	private String user_pw2;
	private String user_name;
	private String email;
	private int post;
	private String address;
	private String phone;
	private String user_state;
	private Date join_date;
	private String role; 
	

}
