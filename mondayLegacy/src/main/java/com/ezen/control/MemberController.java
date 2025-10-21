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
@RequestMapping("/member")
public class MemberController {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Login() 
	{
		return "member/login";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup() 
	{
		return "member/signup";
	}
	
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
}
