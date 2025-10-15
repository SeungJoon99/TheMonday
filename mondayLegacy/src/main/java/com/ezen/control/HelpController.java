package com.ezen.control;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelpController {

	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public String BoardDetail() 
	{
		return "help/board_detail";
	}
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String Board() 
	{
		return "help/board";
	}
	@RequestMapping(value = "/inquire", method = RequestMethod.GET)
	public String Inquire() 
	{
		return "help/inquire";
	}
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String About() 
	{
		return "about";
	}
}
