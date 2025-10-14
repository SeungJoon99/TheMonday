package com.ezen.vo;

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
	@RequestMapping(value = "/about.do", method = RequestMethod.GET)
	public String About() 
	{
		return "about";
	}
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String Index() 
	{
		return "index";
	}
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String Login() 
	{
		return "insert";
	}
	@RequestMapping(value = "/signup.do", method = RequestMethod.GET)
	public String Signup() 
	{
		return "signup";
	}
	@RequestMapping(value = "/thankyou.do", method = RequestMethod.GET)
	public String Thankyou() 
	{
		return "thankyou";
	}
	// main ----------------------------------------------------------
	
	// admin ----------------------------------------------------------
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String Insert() 
	{
		return "insert";
	}
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String List() 
	{
		return "list";
	}
	@RequestMapping(value = "/adminlogin.do", method = RequestMethod.GET)
	public String AdminLogin() 
	{
		return "admin/login";
	}
	@RequestMapping(value = "/order_list.do", method = RequestMethod.GET)
	public String OrderList() 
	{
		return "order_list";
	}
	@RequestMapping(value = "/order_set.do", method = RequestMethod.GET)
	public String OrderSet() 
	{
		return "order_set";
	}
	@RequestMapping(value = "/sales.do", method = RequestMethod.GET)
	public String Sales() 
	{
		return "sales";
	}
	@RequestMapping(value = "/update.do", method = RequestMethod.GET)
	public String Update() 
	{
		return "update";
	}
	// admin ----------------------------------------------------------
	
	// help ----------------------------------------------------------
	@RequestMapping(value = "/board_detail.do", method = RequestMethod.GET)
	public String BoardDetail() 
	{
		return "help/board_detail";
	}
	@RequestMapping(value = "/board.do", method = RequestMethod.GET)
	public String Board() 
	{
		return "help/board";
	}
	@RequestMapping(value = "/inquire.do", method = RequestMethod.GET)
	public String Inquire() 
	{
		return "help/inquire";
	}
	// help ----------------------------------------------------------

	// member ----------------------------------------------------------
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public String Cart() 
	{
		return "member/cart";
	}
	@RequestMapping(value = "/mypage_update.do", method = RequestMethod.GET)
	public String MypageUpdate() 
	{
		return "member/mypage_update";
	}
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String Mypage() 
	{
		return "member/mypage";
	}
	@RequestMapping(value = "/order_detail.do", method = RequestMethod.GET)
	public String OrderDetail() 
	{
		return "member/order_detail";
	}
	// member ----------------------------------------------------------

	// shop ----------------------------------------------------------
	@RequestMapping(value = "/bed.do", method = RequestMethod.GET)
	public String Bed() 
	{
		return "shop/bed";
	}
	@RequestMapping(value = "/chair_baige.do", method = RequestMethod.GET)
	public String ChairBaige() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/chair_green.do", method = RequestMethod.GET)
	public String ChairGreen() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/chair_kruzo.do", method = RequestMethod.GET)
	public String ChairKruzo() 
	{
		return "shop/chair_baige";
	}
	@RequestMapping(value = "/closet.do", method = RequestMethod.GET)
	public String Closet() 
	{
		return "shop/closet";
	}
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String Main() 
	{
		return "shop/main";
	}
	@RequestMapping(value = "/mattress.do", method = RequestMethod.GET)
	public String Mattress() 
	{
		return "shop/mattress";
	}
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public String Search() 
	{
		return "shop/search";
	}
	@RequestMapping(value = "/sofa.do", method = RequestMethod.GET)
	public String Sofa() 
	{
		return "shop/sofa";
	}
	@RequestMapping(value = "/table.do", method = RequestMethod.GET)
	public String Table() 
	{
		return "shop/table";
	}
	// shop ----------------------------------------------------------
}
