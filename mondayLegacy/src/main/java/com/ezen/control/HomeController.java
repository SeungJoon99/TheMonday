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
public class HomeController 
{
	// main ----------------------------------------------------------
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String About() 
	{
		return "about";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String Index() 
	{
		return "index";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() 
	{
		return "insert";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup() 
	{
		return "signup";
	}
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "thankyou";
	}
	// main ----------------------------------------------------------
	
	// admin ----------------------------------------------------------
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String Insert() 
	{
		return "insert";
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String List() 
	{
		return "list";
	}
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String AdminLogin() 
	{
		return "admin/login";
	}
	@RequestMapping(value = "/order_list", method = RequestMethod.GET)
	public String OrderList() 
	{
		return "order_list";
	}
	@RequestMapping(value = "/order_set", method = RequestMethod.GET)
	public String OrderSet() 
	{
		return "order_set";
	}
	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String Sales() 
	{
		return "sales";
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String Update() 
	{
		return "update";
	}
	// admin ----------------------------------------------------------
	
	// help ----------------------------------------------------------
	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public String BoardDetail() 
	{
		return "help/board_detail";
	}
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String Board() 
	{
		return "help/board";
	}
	@RequestMapping(value = "/inquire", method = RequestMethod.GET)
	public String Inquire() 
	{
		return "help/inquire";
	}
	// help ----------------------------------------------------------

	// member ----------------------------------------------------------
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String Cart() 
	{
		return "member/cart";
	}
	@RequestMapping(value = "/mypage_update", method = RequestMethod.GET)
	public String MypageUpdate() 
	{
		return "member/mypage_update";
	}
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String Mypage() 
	{
		return "member/mypage";
	}
	@RequestMapping(value = "/order_detail", method = RequestMethod.GET)
	public String OrderDetail() 
	{
		return "member/order_detail";
	}
	// member ----------------------------------------------------------

	// shop ----------------------------------------------------------
	@RequestMapping(value = "/bed", method = RequestMethod.GET)
	public String Bed() 
	{
		return "shop/bed";
	}
	@RequestMapping(value = "/chair_baige", method = RequestMethod.GET)
	public String ChairBaige() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/chair_green", method = RequestMethod.GET)
	public String ChairGreen() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/chair_kruzo", method = RequestMethod.GET)
	public String ChairKruzo() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/closet", method = RequestMethod.GET)
	public String Closet() 
	{
		return "shop/closet";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String Main() 
	{
		return "shop/main";
	}
	@RequestMapping(value = "/mattress", method = RequestMethod.GET)
	public String Mattress() 
	{
		return "shop/mattress";
	}
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search() 
	{
		return "shop/search";
	}
	@RequestMapping(value = "/sofa", method = RequestMethod.GET)
	public String Sofa() 
	{
		return "shop/sofa";
	}
	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String Table() 
	{
		return "shop/table";
	}
	// shop ----------------------------------------------------------
}
