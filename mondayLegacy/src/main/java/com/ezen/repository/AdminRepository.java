/***********************************
 * 클래스 기능 : 회원정보 C/R/U/D 처리 클래스
 * 작성자 : 유재욱
 * 작성일 : 2025.10.15
 **********************************/

package com.ezen.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;

import com.ezen.vo.*;

@Repository
public class AdminRepository
{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.admin";
	
	//상품등록
	public boolean Insert(ProductVO vo)
	{
		session.insert(namespace + ".Insert",vo);
		return true;
	}	
	
	//상품 목록 조회
	public List<ProductVO> List() 
	{
		List<ProductVO> list = session.selectList(namespace + ".List");
		
		return list;
	}
	
	//상품 목록 조회
	public List<ProductVO> ListK(ProductVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".ListK", vo);
		return list;
	}
	//상품 목록 조회
	public List<ProductVO> ListD(ProductVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".ListD", vo);
		return list;
	}
	
	//상품수정
	public String Update() 
	{
		return "admin/update";
	}
	
	//관리자 로그인
	public String AdminLogin() 
	{
		
		return "admin/login";
	}
	
	//주문 내역 조회
	public String OrderList() 
	{
		return "admin/order_list";
	}
	
	//주문내역 수정
	public String OrderSet() 
	{
		return "admin/order_set";
	}
	
	//매출조회
	public String Sales() 
	{
		return "admin/sales";
	}
		
}
