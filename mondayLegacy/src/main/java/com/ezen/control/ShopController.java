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
public class ShopController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String Main() 
	{
		return "shop/main";
	}
	
	@RequestMapping(value = "/bed", method = RequestMethod.GET)
	public String Bed() 
	{
		return "shop/bed";
	}
	
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetail() 
	{
		return "shop/product_detail";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search() 
	{
		return "shop/search";
	}
	
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "shop/thankyou";
	}
}
