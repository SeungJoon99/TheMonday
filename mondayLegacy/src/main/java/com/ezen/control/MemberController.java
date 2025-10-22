package com.ezen.control;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.vo.*;
import com.ezen.repository.*;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberRepository memberrepository;
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Login() 
	{
		return "member/login";
	}
	
	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	@ResponseBody 
	public String LoginOK(String id, String pw,
			HttpServletRequest request)
	{	
		HttpSession session = request.getSession();
		
		UserVO vo = memberrepository.Login(id, pw);
		
		if(vo == null)
		{
			//로그인 안됨.	
			session.setAttribute("login", null);
			return "false";
		}else
		{
			session.setAttribute("login", vo);
			return "true";
		}
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogOut(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		//session.invalidate();
		session.setAttribute("login", null);
		return "redirect:/";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup() 
	{
		return "member/signup";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String Cart(HttpServletRequest request, Model model) 
	{
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		
		if(vo == null)
		{
			//로그인 안됨.	
			session.setAttribute("login", null);
			return "";
		}
		
		List<CartVO> list = memberrepository.Cart(vo);
		int cartTotal = memberrepository.CartTotal(vo);
		
		model.addAttribute("cartList", list);
		model.addAttribute("cartTotal", cartTotal);
		
		session.setAttribute("cartList", list);
		return "member/cart";
	}
	
	@RequestMapping(value = "Pay", method = RequestMethod.POST)
	public String Pay(HttpServletRequest request, Model model) 
	{
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		
		OrdersVO ordersvo = memberrepository.Pay(vo);
		
		
		return "redirect:/";
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
