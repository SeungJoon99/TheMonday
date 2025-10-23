package com.ezen.control;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.repository.*;
import com.ezen.vo.AnswerVO;
import com.ezen.vo.HelpVO;
import com.ezen.vo.SearchVO;

@Controller
@RequestMapping(value = "/help")
public class HelpController {
	
	@Autowired
	HelpRepository helprepository;
	
	@Autowired
	AnswerRepository answerrepository;
	
	// 팀원 소개 컨트롤러
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String About() 
	{
		return "help/about";
	}
	
	// 문의게시판 상세페이지 컨트롤러
	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public String Board_detail(@RequestParam(required = true) int hno, Model model)
	{

	    HelpVO vo = helprepository.Read(hno);
	    List<AnswerVO> answer =  answerrepository.GetList(hno);
	    model.addAttribute("item", vo);
	    model.addAttribute("answerList", answer);

	    return "help/board_detail";
	}
	
	// 문의 삭제여부 변경 컨트롤러
	@RequestMapping(value = "/deletedelynchange", method = RequestMethod.POST)
	public String Deletedelynchange(@RequestParam(required = true)int hno)
	{
		
		
	    helprepository.Deletedelynchange(hno);
	    System.out.println("게시글 삭제여부 변경");
		return "redirect:/help";
	}	
	
	
	// 관리자 답변 삭제
	@RequestMapping(value = "/answerdelete", method = RequestMethod.POST)
	public String Answerdelete(@RequestParam(required = true)int hno)
	{
		
		System.out.println(hno);
	    answerrepository.Delete(hno); // AnswerRepository 사용 
	    System.out.println("관리자 답변 삭제");
	 
	    return "redirect:/help/board_detail?hno=" + hno;
	}
	
	// 문의 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Board(@RequestParam(required = false) String kind, 
			@RequestParam(defaultValue = "1")int page,
			Model model) 
	{
		SearchVO vo = new SearchVO();
		vo.setKind(kind);
		vo.setPageno(page);
		
		//전체 갯수
		int total = helprepository.GetTotal(vo);
		
		//최대 페이지 갯수
		int maxpage = total / 10;
		if( total % 10 != 0 ) maxpage++;
		
		//페이징 블럭 계산
		//시작블럭 = (현재페이지/10) * 10 + 1
		//끝블럭 = 시작블럭 + 10 - 1
		int startbk = ((page-1) / 10) * 10 + 1;
		int endbk   = startbk + 10 - 1;
		//끝블럭 > 전체페이지 갯수 크면 
		//끝블럭 = 전체페이지 갯수
		if( endbk > maxpage )
		{
			endbk = maxpage;
		}			
		
		//목록 조회 
		List<HelpVO> list = helprepository.GetList(vo);
		if (list != null && !list.isEmpty()) {
		    for(HelpVO item : list) {
		        if (item != null) { // null 체크 추가
		            System.out.println("title: " + item.getHtitle());
		        }
		    }
		} else {    
		    System.out.println("⚠ list is null or empty!");
		}

		model.addAttribute("total",total);
		model.addAttribute("maxpage",maxpage);
		
		model.addAttribute("startbk",startbk);
		model.addAttribute("endbk",endbk);
		
		model.addAttribute("search",vo);
		model.addAttribute("list",list);
	
		
		return "help/board";
	}
	
	@RequestMapping(value = "/inquire", method = RequestMethod.GET)
	public String Inquire() 
	{
		return "help/inquire";
	}
	
	@RequestMapping(value = "/writeok", method = RequestMethod.POST)
	public String Writeok(HelpVO vo, HttpServletRequest request) 
	{
	    HttpSession session = request.getSession();
	    Integer userNo = (Integer) session.getAttribute("user_no");

	    if(userNo == null) {
	        userNo = 1; 
	    }
	    
	    vo.setUno(userNo);
	    
	    helprepository.Insert(vo);

	    int hno = vo.getHno();
	    
	    return "redirect:/help/board_detail?hno=" + hno;
	}
	
	@RequestMapping(value = "/helpupdate", method = RequestMethod.POST)
	public String Helpupdate(HelpVO vo, HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		Integer userNo = (Integer) session.getAttribute("user_no");
		
		if(userNo == null) {
			userNo = 1; 
		}
		
		vo.setUno(userNo);
		
		helprepository.Update(vo);
		
		int hno = vo.getHno();
		
		return "redirect:/help/board_detail?hno=" + hno;
	}
	
	// 관리자 답변 등록 컨트롤러
		@RequestMapping(value = "/answerok", method = RequestMethod.POST)
		public String Answerok(AnswerVO vo, HttpServletRequest request)
		{
		    HttpSession session = request.getSession();
		    Integer managerNo = (Integer) session.getAttribute("manager_no");
		    
		    if(managerNo == null) {
		        managerNo = 1; // 예시: 임시 관리자 번호
		    }

		    vo.setUno(managerNo);
		    
		    answerrepository.Insert(vo);

		    return "redirect:/help/board_detail?hno=" + vo.getHno();
		}
}
