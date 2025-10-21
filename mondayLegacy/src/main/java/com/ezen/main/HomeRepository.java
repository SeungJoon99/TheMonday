package com.ezen.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.vo.ProductVO;
import com.ezen.vo.SearchVO;

@Repository
public class HomeRepository 
{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.main";
	
	//상품 목록 조회
	public List<ProductVO> ProductList()
	{
		List<ProductVO> list = session.selectList(namespace + ".ProductList");
		return list;
	}
}
