package com.ezen.main;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.repository.*;
import com.ezen.vo.*;

@Controller
public class HomeController 
{
	@Autowired
	HomeRepository homerepository;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Index(Model model) 
	{
		//목록 조회 
		List<ProductVO> list = homerepository.ProductList();
		
		model.addAttribute("list", list);
		
		return "index";
	}
	
}