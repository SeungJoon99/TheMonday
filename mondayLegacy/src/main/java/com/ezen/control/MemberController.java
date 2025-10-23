package com.ezen.control;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.vo.*;
import com.mysql.cj.Session;
import com.ezen.repository.*;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberRepository memberrepository;

	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String Login() 
	{
		return "member/login";
	}
	
	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	@ResponseBody 
	public String LoginOK(String id, String pw,
			HttpServletRequest request)
	{	
		HttpSession session = request.getSession();
		
		UserVO vo = memberrepository.Login(id, pw);
		
		if(vo == null)
		{
			//로그인 안됨.	
			session.setAttribute("login", null);
			return "false";
		}else
		{
			session.setAttribute("login", vo);
			return "true";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogOut(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		//session.invalidate();
		session.setAttribute("login", null);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup() 
	{
		return "member/signup";
	}
	
	/*
	 * @RequestMapping(value = "/sendmail")
	 * 
	 * @ResponseBody public String SendEmail(@RequestParam String uemail) throws
	 * Exception { //인증코드 생성 String authCode = ""; String code = "1234567890"; int
	 * maxlength = 6; for(int i = 0; i < maxlength; i++) { int rand =
	 * (int)(Math.random() * 1000) % code.length(); authCode += code.charAt(rand); }
	 * 
	 * // 메일 내용 String subject = "인증번호 발송"; String content = "회원가입 인증번호는 [" +
	 * authCode + "]입니다.";
	 * 
	 * // 보내는 사람 String from = "@naver.com";
	 * 
	 * // 받는 사람 String to = uemail;
	 * 
	 * try { // 메일 내용 넣을 객체와, 이를 도와주는 Helper 객체 생성 MimeMessage message =
	 * mailSender.createMimeMessage(); MimeMessageHelper mailHelper = new
	 * MimeMessageHelper(message, "UTF-8");
	 * 
	 * // 메일 내용을 채워줌 mailHelper.setFrom(from); // 보내는 사람 셋팅 mailHelper.setTo(to); //
	 * 받는 사람 셋팅 mailHelper.setSubject(subject); // 제목 셋팅
	 * mailHelper.setText(content); // 내용 셋팅
	 * 
	 * // 메일 전송 mailSender.send(message); return authCode; } catch(Exception e) {
	 * e.printStackTrace(); return "ERROR"; } }
	 */
	
	@RequestMapping(value = "/signupok", method = RequestMethod.POST)
	public String SignupOk(UserVO vo) 
	{
		memberrepository.Signup(vo);
		return "redirect:/member";
	}
	
	@RequestMapping(value = "/unickcheck")
	@ResponseBody 
	public String UnickCheck(@RequestParam String unick)
	{
		if( unick == null || unick.equals("") ) return "ERROR";
		
		if( memberrepository.UnickCheck(unick) == true ) return "DUPLICATED";
		
		return "NOT_DUPLICATED";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String Cart(HttpServletRequest request, Model model) 
	{
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		
		if(vo == null)
		{
			//로그인 안됨.	
			session.setAttribute("login", null);
			return "";
		}
		
		List<CartVO> list = memberrepository.Cart(vo);
		if (list == null) list = new ArrayList<>();
	   
		int cartTotal = memberrepository.CartTotal(vo);
		
		model.addAttribute("cartList", list);
		model.addAttribute("cartTotal", cartTotal);
		
		session.setAttribute("cartList", list);
		return "member/cart";
	}
	
	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	public String Pay(HttpServletRequest request, Model model) 
	{
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		
		memberrepository.Pay(vo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/mypage_update", method = RequestMethod.GET)
	public String MypageUpdate() 
	{
		return "member/mypage_update";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String Mypage(HttpServletRequest request, Model model) 
	{
		HttpSession session = request.getSession();
		
		UserVO vo = (UserVO)session.getAttribute("login");
		
		int uno = vo.getUno();
		
		vo = memberrepository.UserMypage(vo);
		
		List<OrdersVO> list = memberrepository.MypageOrderDetail(uno);
		
		model.addAttribute("mypage", vo);
		model.addAttribute("mypageOrderList", list);
		return "member/mypage";
	}

}
