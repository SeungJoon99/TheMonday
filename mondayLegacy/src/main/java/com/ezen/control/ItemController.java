package com.ezen.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/items")
public class ItemController {
	//url 설게
	//자원(/)은 url이 가리키는 리소스
	//행위는 http 메서드 > get과 post
	
	// /items > get items 테이블에 있는 모든 자원(데이터)
	// /items/1 > get items 테이블의 1번 자원
	// /write > get 작성 페이지 요청
	// /write > post 작성 처리 요청(items 테이블에 insert)
	//RESTful url 검색
	
	//목록조회 get
	@RequestMapping(value="", method = RequestMethod.GET)
	public String items() {
		System.out.println("목록조회");
		return "items/items";
		//\webapp\WEB-INF\views\items\items.jsp
	}
	
	//단건조회 get 동적으로 받는 경로 pathvariable
	@RequestMapping(value="/{no}", method = RequestMethod.GET)
	public String item(@PathVariable("no") int no) {
		System.out.println("단건조회" + no);
		return "items/item";
	}
	
	//작성화면 get
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String write() {
		
		return "";
	}
	
	//작성처리 post
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String writeok() {
		//ItemRepository 클래스의 item insert 메서드 호출
		//post페이지는 화면응답x
		return "redirect:/items/1";
	}
	
	//수정화면 get
	//items/{no}/modify
	@RequestMapping(value="/{no}/modify", method = RequestMethod.GET)
	public String modify(@PathVariable("no") int no) {
		//
		System.out.println("수정화면" + no);
		return "items/modify";
	}
	
	//수정처리 post
	//items/{no}/modify
	@RequestMapping(value="/{no}/modify", method = RequestMethod.POST)
	public String modifyok(@PathVariable("no") int no) {
		//
		System.out.println("수정처리" + no);
		return "redirect:/items/2";
	}
	
	//삭제처리 post
	//items/{no}/delete
	@RequestMapping(value="/{no}/delete", method = RequestMethod.POST)
	public String delete(@PathVariable("no") int no) {
		//
		System.out.println("삭제처리" + no);
		return "redirect:/items";
	}
}
