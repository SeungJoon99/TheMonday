package com.ezen.control;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shop")
public class ShopController {	
	
	//상품 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Main() 
	{
		return "shop/main";
	}
	
	//카테고리별 상품 목록 조회
	@RequestMapping(value = "/bed", method = RequestMethod.GET)
	public String Bed() 
	{
		return "shop/bed";
	}
	
	//상품 단건 조회
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetail() 
	{
		return "shop/product_detail";
	}

	//상품 검색
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search() 
	{
		return "shop/search";
	}
	
	//상품 구매 완료
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "shop/thankyou";
	}
}
