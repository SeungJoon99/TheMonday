package com.ezen.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.repository.BoardRepository;
import com.ezen.vo.BoardVO;

@RestController
public class BoardController {
	
	@Autowired
	private BoardRepository repository;
	
	@RequestMapping("/boards")
	public BoardVO boards(){
		return repository.selectBoardWithReply(2);
	}
}
