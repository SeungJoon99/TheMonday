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
	ShopRepository shoprepository;
	
	//상품 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Main(@RequestParam(required = false) String pkind, 
			@RequestParam(defaultValue = "1")int page,
			Model model) 
	{
		SearchVO vo = new SearchVO();
		vo.setPkind(pkind);
		vo.setPageno(page);
		
		//전체 갯수
		int total = shoprepository.GetTotal(vo);
		
		int sizePerPage = 16;  // 한 페이지에 보여줄 상품 개수
		int blockSize = 10;    // 한 블럭에 보여줄 페이지 번호 개수

		// 전체 페이지 수
		int maxpage = total / sizePerPage;
		if ( total % sizePerPage != 0 ) maxpage++;

		// 블럭 시작/끝 번호 계산
		int startbk = ((page - 1) / blockSize) * blockSize + 1;
		int endbk = startbk + blockSize - 1;
		if ( endbk > maxpage ) endbk = maxpage;
		
		//목록 조회 
		List<ProductVO> list = shoprepository.Main(vo);
		
		model.addAttribute("total",total);
		model.addAttribute("maxpage",maxpage);
		model.addAttribute("currentPage", page);
		
		model.addAttribute("startbk",startbk);
		model.addAttribute("endbk",endbk);
		
		model.addAttribute("searchvo",vo);
		model.addAttribute("main",list);
		return "shop/main";
	}
	//상품 단건 조회
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetail(@RequestParam(required = true) int pno,
			 Model model) 
	{
		ProductVO vo = shoprepository.ProductDetail(pno);
		
		model.addAttribute("ProductDetail",vo);
		
		return "shop/product_detail";
	}

	//상품검색
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search(@RequestParam(required = false) String keyword,
	                     Model model) 
	{
	    SearchVO vo = new SearchVO();
	    vo.setKeyword(keyword);
	   
	    List<ProductVO> list = shoprepository.Search(vo);

	    model.addAttribute("Search", list);
	    model.addAttribute("keyword", keyword);   
	    return "shop/search";
	}

	
	//상품 구매 완료
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "shop/thankyou";
	}
}
