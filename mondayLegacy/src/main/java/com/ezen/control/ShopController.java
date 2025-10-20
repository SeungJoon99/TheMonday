package com.ezen.control;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.repository.*;
import com.ezen.vo.*;

@Controller
@RequestMapping("/shop")
public class ShopController {	
	@Autowired
	ShopService shopservice;
	
	//상품 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Main(@RequestParam(required = false) String kind, Model model) 
	{
		ProductVO vo = new ProductVO();
		
		List<ProductVO> list = shopservice.Main(vo);
		
		model.addAttribute("main",list);
		
		return "shop/main";
	}
	//상품 단건 조회
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetail(@RequestParam(required = false) String pno,
			ProductVO vo, Model model) 
	{
		shopservice.ProductDetail(pno);
		
		model.addAttribute("ProductDetail",vo);
		
		return "shop/product_detail";
	}

	//상품 검색
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search(SearchVO vo, Model model) 
	{
		List<ProductVO> list = shopservice.Search(vo);
		
		model.addAttribute("Search", list);
		
		return "shop/search";
	}
	
	//상품 구매 완료
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "shop/thankyou";
	}
}
