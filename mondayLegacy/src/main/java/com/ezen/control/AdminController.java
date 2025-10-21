package com.ezen.control;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.ezen.repository.*;
import com.ezen.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
@Controller
@RequestMapping("/admin")
public class AdminController 
{	
	@Autowired
	AdminRepository adminrepositoy;
	
	//상품 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String List(UserVO vo, Model model, HttpServletRequest request)
	{
		List<ProductVO> list = adminrepositoy.List();
		
		model.addAttribute("list", list);
		
		return "admin/list";
	}
	
	//상품 목록 조회
	@RequestMapping(value = "/listk", method = RequestMethod.GET)
	public String ListK(ProductVO vo) 
	{
		return "";
	}
	//상품 목록 조회
	@RequestMapping(value = "/listd", method = RequestMethod.GET)
	public String ListD(ProductVO vo) 
	{
		return "";
	}
	
	//상품등록
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String Insert(ProductVO vo)
	{
		return "";
	}	
		
	//상품수정
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String Update() 
	{
		return "admin/update";
	}
	
	//관리자 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String AdminLogin() 
	{
		
		return "admin/login";
	}
	
	//관리자 로그인 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String AdminLoginOK(UserVO vo,
			HttpServletRequest request) {
		UserVO login = null; //userService.Login(vo);
		
		if(login == null) {
			return "redirect:/admin/login";
		}else {
			request.getSession().setAttribute("login", login);
			return "admin/list";
		}
	}
	
	//주문 내역 조회
	@RequestMapping(value = "/order_list", method = RequestMethod.GET)
	public String OrderList() 
	{
		return "admin/order_list";
	}
	
	//주문내역 수정
	@RequestMapping(value = "/order_set", method = RequestMethod.GET)
	public String OrderSet() 
	{
		return "admin/order_set";
	}
	
	//매출조회
	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String Sales() 
	{
		return "admin/sales";
	}
	
//	//관리자로그인 검사
//	@
//	public boolean adminLoginCheck(HttpServletRequest request) {
//		UserVO vo = (UserVO)request.
//		return false;
//	}
		
}
