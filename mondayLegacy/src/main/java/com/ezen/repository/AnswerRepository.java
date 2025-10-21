package com.ezen.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.vo.AnswerVO;

@Repository
public class AnswerRepository {
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ezen.help";

	//댓글을 등록한다.
	//return true : 등록 성공, false : 등록 실패 
	public boolean Insert(AnswerVO vo)
	{
		session.insert(namespace + ".insertAnswer",vo);
		return true;
	}
	
	//댓글 목록을 조회한다.
	public List<AnswerVO> GetList(int hno)
	{
		List<AnswerVO> list = session.selectList(namespace + ".selectAnswerByHno",hno);		
		return list;
	}
	
	//댓글을 삭제한다.
	public boolean Delete(int hno)
	{
		session.delete(namespace + ".deleteAnswer",hno);
		return true;
	}	
}

