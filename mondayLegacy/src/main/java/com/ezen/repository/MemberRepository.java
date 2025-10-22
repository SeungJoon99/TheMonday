package com.ezen.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import com.ezen.vo.*;

@Repository
public class MemberRepository 
{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.member";
	
	//로그인
	public UserVO Login(String id,String pw)
	{
		UserVO vo = new UserVO();
		vo.setUemail(id);
		vo.setUpw(pw);
		
		vo = session.selectOne(namespace + ".login",vo);
		return vo;
	}

	//장바구니
	public List<CartVO> Cart(UserVO vo)
	{
		List<CartVO> list = session.selectList(namespace + ".Cart", vo);
		
		return list;
	}
	
	//장바구니 총 합계
	public int CartTotal(UserVO vo)
	{
		int cartTotal = session.selectOne(namespace + ".cartTotal", vo);
		
		return cartTotal;
	}
	
	//결제
	public OrdersVO Pay(UserVO vo)
	{
		OrdersVO ordersvo = session.selectOne(namespace + ".order", vo);
				
		session.insert(namespace + ".insertIntoOrders", vo);
		
		session.delete(namespace + ".deleteFromCart");
		
		return ordersvo;
		
	}
}
