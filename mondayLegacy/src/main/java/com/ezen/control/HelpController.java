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
	
	// 문의 삭제 컨트롤러
	@RequestMapping(value = "/delete")
	public String Delete(@RequestParam(required = true)int hno)
	{
		helprepository.Delete(hno);
		return "redirect:/help/";
	}	
	
	// 
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
		// HttpServletRequest에서 세션 가져오기
	    HttpSession session = request.getSession();
		
	    // 로그인 세션에서 u_no 가져오기
	    Integer userNo = (Integer) session.getAttribute("user_no");

	    if(userNo == null) {
	        // 테스트용 기본값
	        userNo = 1; 
	    }

	    vo.setUno(userNo);
		
		HelpVO insert = (HelpVO)request.getSession().getAttribute("insert");
		helprepository.Insert(vo);
		return "help/inquire";
	}
}
