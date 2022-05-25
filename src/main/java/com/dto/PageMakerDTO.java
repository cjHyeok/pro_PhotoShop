package com.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageMakerDTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	
}
