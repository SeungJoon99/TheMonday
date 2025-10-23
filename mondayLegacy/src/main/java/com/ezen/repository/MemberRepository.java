package com.ezen.repository;

import java.util.ArrayList;
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
	
	//회원가입
	public boolean Signup(UserVO vo)
	{
		
		
		if( UnickCheck(vo.getUnick()) == true ) return false;
		
		session.insert(namespace + ".Signup",vo);
		
		return true;
	}
	
	//닉네임 중복 체크
	public boolean UnickCheck(String u)
	{
		int total = session.selectOne(namespace + ".UnickCheck", u);
		
		if( total > 0 )	return true;
		return false;
	}

	//장바구니
	public List<CartVO> Cart(UserVO vo)
	{
		List<CartVO> list = session.selectList(namespace + ".Cart", vo);
		
		if( list == null ) return new ArrayList<>();
		
		return list;
	}
	
	//장바구니 총 합계
	public int CartTotal(UserVO vo)
	{
		Integer cartTotal = session.selectOne(namespace + ".cartTotal", vo);
		
		if( cartTotal != null ) return cartTotal;
		
		return 0;
	}
	
	//결제
	public void Pay(UserVO vo)
	{
		session.insert(namespace + ".insertIntoOrders", vo);
		
		session.delete(namespace + ".deleteCart");
		
	}

	//마이페이지
	public UserVO UserMypage(UserVO vo)
	{
		UserVO mypage = session.selectOne(namespace + ".selectFromUser", vo);
		
		return mypage;
	}
	
	//마이페이지 주문내역
	public List<OrdersVO> MypageOrderDetail(int uno)
	{
		List<OrdersVO> list = session.selectList(namespace + ".selectFromOrders", uno);
		
		return list;
	}
}
