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
	public String Board(@RequestParam(required = false) String hkind, 
	        @RequestParam(defaultValue = "1")int page,
	        Model model) 
	{
	    SearchVO vo = new SearchVO();
	    
	    // 1. 현재 페이지 번호 설정:
	    //    -> 이 시점에 VO 내부에서 'offset'이 sizePerPage(기본값 16)를 기준으로 자동 계산됩니다.
	    vo.setPageno(page); 
	    
	    // 2. 게시물 종류 설정:
	    //    -> SearchVO의 setHkind 메서드 (파라미터 이름이 pkind이더라도)를 사용하여 hkind 필드를 설정합니다.
	    vo.setHkind(hkind);
	    
	    // 3. 페이지당 개수 (sizePerPage)를 VO에서 가져옵니다. (VO를 수정하지 않기 때문에 16을 사용합니다)
	    int sizePerPage = 16; 
	    
	    // 4. 전체 게시물 수 획득 (검색 조건 'kind'가 vo.hkind에 설정된 상태로 쿼리됩니다)
	    int total = helprepository.GetTotal(vo);
	    
	    int blockSize = 10;     // 한 블럭에 보여줄 페이지 번호 개수 (10 고정)

	    // 전체 페이지 수 계산 (total이 30이고 sizePerPage가 16이면 maxpage는 2가 됩니다.)
	    int maxpage = total / sizePerPage;
	    if ( total % sizePerPage != 0 ) maxpage++;

	    // 블럭 시작/끝 번호 계산
	    int startbk = ((page - 1) / blockSize) * blockSize + 1;
	    int endbk = startbk + blockSize - 1;
	    if ( endbk > maxpage ) endbk = maxpage;
	    
	    // 5. 현재 페이지 데이터 리스트 획득:
	    //    -> DB 쿼리에서 vo.getOffset()과 sizePerPage(16)를 LIMIT 절에 사용해야 합니다.
	    List<HelpVO> list = helprepository.GetList(vo);
	    
	    // 6. 뷰(View)로 전달
	    model.addAttribute("list", list);
	    model.addAttribute("maxpage", maxpage);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("startbk", startbk);
	    model.addAttribute("endbk", endbk);
	    model.addAttribute("total", total);
	    model.addAttribute("searchvo", vo); // VO 전체를 넘겨 검색 조건 유지
	    
		return "help/board";
	}
	
	// 문의 작성 페이지 이동
	@RequestMapping(value = "/inquire", method = RequestMethod.GET)
	public String Inquire() 
	{
		return "help/inquire";
	}
	// 문의 작성 구현
	@RequestMapping(value = "/writeok", method = RequestMethod.POST)
	public String Writeok(HelpVO vo, HttpServletRequest request) 
	{
	    HttpSession session = request.getSession();
	    Integer userNo = (Integer) session.getAttribute("user_no");

	    if(userNo == null) {
	        userNo = 2; 
	    }
	    
	    vo.setUno(userNo);
	    
	    helprepository.Insert(vo);

	    int hno = vo.getHno();
	    
	    return "redirect:/help/board_detail?hno=" + hno;
	}
	
	// 문의 내용 수정
	@RequestMapping(value = "/helpupdate", method = RequestMethod.POST)
	public String Helpupdate(HelpVO vo, HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		Integer userNo = (Integer) session.getAttribute("user_no");
		
		if(userNo == null) {
			userNo = 2; 
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
		    
		    // 관리자 검사
		    if(managerNo == null) {
		        managerNo = 1; // 예시: 임시 관리자 번호
		    }

		    vo.setUno(managerNo);
		    
		    answerrepository.Insert(vo);

		    return "redirect:/help/board_detail?hno=" + vo.getHno();
		}
}
