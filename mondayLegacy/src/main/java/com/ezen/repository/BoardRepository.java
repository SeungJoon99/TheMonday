package com.ezen.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.vo.BoardVO;

@Repository
public class BoardRepository {
	
	@Autowired
	private SqlSession session;

	//board테이블의 게시글 단건 조회
	public BoardVO selectBoardWithReply(int bno) {
		BoardVO vo = session.selectOne("com.ezen.vo.board.selectBoardWithReply", bno);
		return vo;
	}
}
