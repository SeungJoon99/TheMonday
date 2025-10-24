package com.ezen.repository;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	public void Pay(OrdersVO ovo, List<CartVO> cartList) {
	    // 1. Orders insert
	    session.insert(namespace + ".insertIntoOrders", ovo);
	    
	    int ono = ovo.getOno();
	    session.insert(namespace + ".setManage", ono);

	    // 2. Detail insert
	    for(CartVO c : cartList) {
	        DetailVO d = new DetailVO();
	        d.setOno(ovo.getOno());
	        d.setPno(c.getPno());
	        d.setDqty(c.getCqty());
	        d.setDtotal(c.getProduct().getPprice() * c.getCqty());
	        d.setPname(c.getProduct().getPname());
	        d.setPpimgname(c.getProduct().getPpimgname());
	        session.insert(namespace + ".insertIntoDetail", d);
	    }

	    // 3. Cart 삭제
	    session.delete(namespace + ".deleteCart", ovo.getUno());
	}
	
	
//	//결제
//	public void Pay(OrdersVO ovo)
//	{
//		session.insert(namespace + ".insertIntoOrders", ovo);
//		System.out.println(ovo.getUno());
//		session.delete(namespace + ".deleteCart",ovo.getUno());
//		
//	}

	//마이페이지 회원정보
	public UserVO UserMypage(UserVO vo)
	{
		UserVO mypage = session.selectOne(namespace + ".selectFromUser", vo);
		
		return mypage;
	}
	
	//주문내역 조회
	public List<RecordVO> Orderrecordlist(UserVO vo)
	{
		List<RecordVO> orderlist = session.selectList(namespace + ".orderrecordlist", vo);
		
		return orderlist;
	}
	
	
	//회원 탈퇴
	public void UserDelete(int uno)
	{
		session.update(namespace + ".deleteUser", uno);
	}
}
