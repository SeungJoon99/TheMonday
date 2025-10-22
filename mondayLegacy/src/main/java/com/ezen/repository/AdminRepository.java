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
	public boolean productInsert(ProductVO vo)
	{
		session.insert(namespace + ".productInsert",vo);
		return true;
	}	

	//전체 상품 개수
	public int GetTotal(SearchVO vo)
	{
		int total = session.selectOne(namespace + ".total", vo);
		return total;
	}
		
	//상품 목록 조회
	public List<ProductVO> productList(SearchVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".productList", vo);
		
		return list;
	}
	
	//상품 목록 조회
	public List<ProductVO> productListK(ProductVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".productListK", vo);
		return list;
	}
	//상품 목록 조회
	public List<ProductVO> productListD(ProductVO vo) 
	{
		List<ProductVO> list = session.selectList(namespace + ".productListD", vo);
		return list;
	}
	
	//상품조회
	public ProductVO productRead(Integer pno) 
	{
//		System.out.println("err3");
		ProductVO vo = session.selectOne(namespace + ".productRead",pno);
//		System.out.println(vo.getPno());
//		System.out.println(vo.getPname());
//		System.out.println("err4");
		return vo;
	}
	
	//상품수정
	public boolean productUpdate(ProductVO vo) 
	{
//		System.out.println("uok4");
		session.selectOne(namespace + ".productUpdate",vo);
//		System.out.println("uok5");
		return true;
	}
	
	//관리자 로그인
	public String adminLogin() 
	{
		
		return "admin/login";
	}
	
	//주문 내역 조회
	public List<OrdersVO> orderList() 
	{
		List<OrdersVO> list = session.selectList(namespace + ".OrderList");
		/*
		for( OrdersVO v : list ){
			System.out.println(v.getPname());
			System.out.println(v.getSvalue());
		}
		
		System.out.println( list.get(0).getPname());
		for(int i=0;i > 3; i++ ){
			OrdersVO vo = list.get(i);
			System.out.println(vo.getPname());
			System.out.println(vo.getSvalue());
		}
		
		*/
		return list;
	}
	
	//주문내역 수정
	public String orderSet() 
	{
		return "admin/order_set";
	}
	
	//매출조회
	public String sales() 
	{
		return "admin/sales";
	}
		
}
