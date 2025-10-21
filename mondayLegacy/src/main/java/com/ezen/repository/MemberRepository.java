package com.ezen.repository;

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
	
}
