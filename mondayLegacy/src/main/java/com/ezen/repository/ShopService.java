package com.ezen.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import com.ezen.vo.*;

@Repository
public class ShopService 
{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.shop";
	
	//상품 목록 조회
	public List<ProductVO> Main(ProductVO vo)
	{
		List<ProductVO> list = session.selectList(namespace + ".Main", vo);
		return list;
	}
	//카테고리별 상품 목록 조회
	public List<ProductVO> Kind(ProductVO vo)
	{
		List<ProductVO> list = session.selectList(namespace + ".Kind", vo.getPkind());
		return list;
	}
	//상품 단건 조회
	public ProductVO ProductDetail(String pno)
	{
		ProductVO p = session.selectOne(namespace + ".ProductDetail", pno);
		return p;
	}
	//상품 검색
	public List<ProductVO> Search(SearchVO vo)
	{
		List<ProductVO> list = session.selectList(namespace + ".Search", vo);
		return list;
	}
}
