package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.OrderDTO;
import com.service.OrderService;

@Controller
public class PaymentWebhook {

	@Autowired
	OrderService oservice;
	
	@RequestMapping(value = "/payments/webhook", method = RequestMethod.GET, headers="Accept=application/json")
	public @ResponseBody String paymentComplete(@RequestParam Map<String, String> map) {
		System.out.println("/payments/webhook  In ====================================");
		System.out.println("map ==" + map);
		
		PaymentCheck paymentCheck = new PaymentCheck();
		//1. 액세스 토큰 발급 받기 
		String accessToken = paymentCheck.getImportToken(); 
		System.out.println("accessToken ==" + accessToken);
		
		//2. imp_uid로 아임포트 서버에서 결제 정보 조회
		String imp_amount = paymentCheck.getAmount(accessToken, map.get("imp_uid"));
		System.out.println("2, amount ==" + imp_amount);
		
		 
		
		//3. 결제 정보 검증 후 저장하기
		String order_id = map.get("merchant_uid");
		String []tokens=order_id.split("-");
		 
		if(tokens.length == 2) { 
			order_id = tokens[1];
			
			List<OrderDTO> olist = oservice.orderIdSearch(order_id);
			if (olist.size() == 1) {
				OrderDTO odto = olist.get(0);
				if( odto.getTotal_price() == Integer.parseInt(imp_amount)) {
					System.out.println("결제정보 검증 = imp" + imp_amount);
					//4. DB에 상태 저장 상태를 payment_completed로 변경
					oservice.orderPaymentCompletedUpdate(order_id);
					
					System.out.println("ajax success return  " );
					//5. 결제 응답 결과 전송
					return "success";
				}
			}
		} 
		return "fail";
		
	}
	
	
	
	
}
