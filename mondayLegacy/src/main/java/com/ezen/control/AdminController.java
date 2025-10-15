package com.ezen.control;

import java.util.*;
import com.ezen.vo.*;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController 
{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.admin";
	
	//상품등록
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public boolean Insert(ProductVO vo)
	{
		session.insert(namespace + ".insert",vo);
		return true;
	}	
	
	//상품 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public List<ProductVO> List(ProductVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".list", vo);
		return list;
	}
	
	//상품수정
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String Update() 
	{
		return "admin/update";
	}
	
	//관리자 로그인
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String AdminLogin() 
	{
		
		return "admin/login";
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
		
}
