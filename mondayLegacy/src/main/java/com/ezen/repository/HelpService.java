package com.ezen.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.vo.HelpVO;
import com.ezen.vo.SearchVO;

@Repository
public class HelpService {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.help";

	//게시물 정보를 등록한다.
	//return true : 등록 성공, false : 등록 실패
	public boolean Insert(HelpVO vo)
	{
		
		session.insert(namespace + ".insert",vo);
		return true;
	}	
	
	//게시물 정보를 읽는다.
	public HelpVO Read(@RequestParam int hno)
	{
		HelpVO vo = session.selectOne(namespace + ".view",hno);
		return vo;
	}	
	
	//게시물 정보를 변경한다.
	//return true : 변경 성공, false : 변경 실패
	public boolean Update(HelpVO vo)
	{
		session.update(namespace + ".update",vo);
		return true;
	}
		
	//게시물 정보를 삭제한다.	
	//return true : 삭제 성공, false : 삭제 실패
	public boolean Delete(int hno)
	{
		//해당 게시글을 삭제
		session.delete(namespace + ".helpdelete",hno);
		return true;
	}	
	
	//전체 게시물의 갯수를 얻는다.
	//return : 전체 게시물 갯수
	public int GetTotal(SearchVO vo)
	{
		int total = session.selectOne(namespace + ".total", vo);
		return total;
	}
	
	//게시물의 목록을 읽는다.
	public List<HelpVO> GetList(SearchVO vo)
	{
		List<HelpVO> list = session.selectList(namespace + ".list", vo);
		return list;
	}
}
