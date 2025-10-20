package com.ezen.control;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.repository.HelpService;
import com.ezen.vo.HelpVO;
import com.ezen.vo.SearchVO;

@Controller
@RequestMapping(value = "/help")
public class HelpController {
	
	@Autowired
	HelpService helpservice;
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String About() 
	{
		return "help/about";
	}
	
	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public String Board_detail() 
	{
		return "help/board_detail";
	}
	
	@RequestMapping(value = "/delete")
	public String Delete(@RequestParam(required = true)String no)
	{
		helpservice.Delete(no);
		return "redirect:/help/board";
	}	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Board(@RequestParam(required = false) String kind, 
			@RequestParam(defaultValue = "1")int page,
			Model model) 
	{
		SearchVO vo = new SearchVO();
		vo.setKind(kind);
		vo.setPageno(page);
		
		//전체 갯수
		int total = helpservice.GetTotal(vo);
		
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
		List<HelpVO> list = helpservice.GetList(vo);
		for(HelpVO item : list)
		{
			System.out.println("title:" + item.getHtitle());
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
}
