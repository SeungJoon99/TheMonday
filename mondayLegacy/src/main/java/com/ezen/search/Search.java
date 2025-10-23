package com.ezen.search;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezen.vo.*;

@Component
public class Search {

	/*
	@Autowired
	private SqlSession session;

	//전체 상품 개수
	public int GetTotal(SearchVO vo)
	{
		int total = session.selectOne(namespace + ".total", vo);
		return total;
	}
	//상품 단건 조회
	public ProductVO ProductDetail(int pno)
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
	*/
}
