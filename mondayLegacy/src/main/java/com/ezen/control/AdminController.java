package com.ezen.control;

import java.io.*;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.ezen.repository.*;
import com.ezen.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
@Controller
@RequestMapping("/admin")
public class AdminController
{
	/* 파일 경로/ 없으면 폴더생성
	 * @ResponseBody
        ResponseEntity handleFileUpload(@RequestParam("file") MultipartFile file) {
            if (!file.isEmpty()) {
                try {
                    String uploadsDir = "/uploads/";
                    String realPathtoUploads =  request.getServletContext().getRealPath(uploadsDir);
                    if(! new File(realPathtoUploads).exists())
                    {
                        new File(realPathtoUploads).mkdir();
                    }
                }}}
	 */
	@Autowired
	ServletContext context;
	
	@Autowired
	AdminRepository adminrepository;
	
	//경로구분자
	String separator = File.separator;

	//상품등록 페이지
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String productInsert()
	{
		return "admin/insert";
	}

	//상품등록처리
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String productInsertOK(@ModelAttribute ProductVO vo,
	@RequestParam(value = "img", required = false)MultipartFile file) throws IllegalStateException, IOException
	{
		if(!file.isEmpty()) {
			
			//업로드된 원본 파일 이름 가져오기
			//tomcat소유의 임시디렉토리(temp) 서버가 리부팅되면 temp를 비운다
			String originalFileName = file.getOriginalFilename();
			
			String fileExt = originalFileName.substring(originalFileName.lastIndexOf(".") );
			
			//파일 이름이 중복되지 않도록 파일 이름 변경 : 서버에 저장할 이름
			// UUID 클래스 사용
			UUID uuid = UUID.randomUUID();
			String savedFileName = uuid.toString();
//			System.out.println(context.getRealPath("/resources/images") + separator + savedFileName + fileExt);
			//첨부파일 객체 생성
			File newFile = new File(
					context.getRealPath("/resources/images") + separator + savedFileName + fileExt);
			//실제 저장해야하는 폴더로 업로드 된 파일을 옮긴다.
			//실제 저장 디렉토리로 전송
			file.transferTo(newFile); //받아온 file을 newFile이 가지고있는 path에 (newFile객체에 담아서??)전송한다
			
			vo.setPfimgname(originalFileName);			//원본파일명(논리파일)
			vo.setPpimgname(savedFileName + fileExt);	//저장파일명(물리파일)
		}
		adminrepository.productInsert(vo);
//		System.out.println("err3");
		return "redirect:/admin";
	}
	
	//상품 목록 조회 페이지
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String productList(@RequestParam(defaultValue = "1")int page, SearchVO vo, Model model)
	{
		int blockSize = 10;    // 한 블럭에 보여줄 페이지 번호 개수
		int sizePerPage = 15;  // 한 페이지에 보여줄 상품 개수
//		vo.setPkind(pkind);
		System.out.println(vo.getBegindate());
		System.out.println(vo.getEnddate());
		System.out.println(vo.getKeyword());
		System.out.println(vo.getPkind());
		vo.setPageno(page, sizePerPage);
		//전체 갯수
		int total = adminrepository.GetTotal(vo);
		
		// 전체 페이지 수
		int maxpage = total / sizePerPage;
		if ( total % sizePerPage != 0 ) maxpage++;

		// 블럭 시작/끝 번호 계산
		int startbk = ((page - 1) / blockSize) * blockSize + 1;
		int endbk = startbk + blockSize - 1;
		if ( endbk > maxpage ) endbk = maxpage;
		
		List<ProductVO> list = adminrepository.productList(vo);

		model.addAttribute("total",total);
		model.addAttribute("maxpage",maxpage);
		model.addAttribute("currentPage", page);
		
		model.addAttribute("startbk",startbk);
		model.addAttribute("endbk",endbk);
		
		model.addAttribute("searchvo",vo);
		model.addAttribute("items",list);
		
		return "admin/list";
	}
	/*
	//상품 목록 조회
	@RequestMapping(value = "/listk", method = RequestMethod.GET)
	public String porductListK(ProductVO vo) 
	{
		return "";
	}
	//상품 목록 조회
	@RequestMapping(value = "/listd", method = RequestMethod.GET)
	public String porductListD(ProductVO vo) 
	{
		return "";
	}
	*/
	//상품수정 페이지
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String productUpdate(@RequestParam(required = false) Integer pno, Model model) 
	{
        // 예외 처리
		if (pno == null || pno == 0) return "redirect:/admin"; 
//		System.out.println(pno);
//		System.out.println("err");
		ProductVO vo = adminrepository.productRead(pno);

		// 상품을 찾을 수 없을 경우 예외 처리
		if (vo == null) return "redirect:/admin"; 
//		System.out.println(vo.getPno());
//		System.out.println(vo.getPname());
		model.addAttribute("item", vo);
		return "admin/update";
	}
	
	//상품수정 처리
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String productUpdateOK(ProductVO vo,
			@RequestParam(value = "img", required = false)MultipartFile file) throws IllegalStateException, IOException
	{
//		System.out.println("uok1");
		if(!file.isEmpty()) {
			
			//업로드된 원본 파일 이름 가져오기
			//tomcat소유의 임시디렉토리(temp) 서버가 리부팅되면 temp를 비운다
			String originalFileName = file.getOriginalFilename();
			
			String fileExt = originalFileName.substring(originalFileName.lastIndexOf(".") );
			
			//파일 이름이 중복되지 않도록 파일 이름 변경 : 서버에 저장할 이름
			// UUID 클래스 사용
			UUID uuid = UUID.randomUUID();
			String savedFileName = uuid.toString();
//			System.out.println(context.getRealPath("/resources/images") + separator + savedFileName + fileExt);
			//첨부파일 객체 생성
			File newFile = new File(
					context.getRealPath("/resources/images") + separator + savedFileName + fileExt);
			//실제 저장해야하는 폴더로 업로드 된 파일을 옮긴다.
			//실제 저장 디렉토리로 전송
			file.transferTo(newFile); //받아온 file을 newFile이 가지고있는 path에 (newFile객체에 담아서??)전송한다
//			System.out.println("uok2");
			vo.setPfimgname(originalFileName);			//원본파일명(논리파일)
			vo.setPpimgname(savedFileName + fileExt);	//저장파일명(물리파일)
		}
//		System.out.println("uok3");
		adminrepository.productUpdate(vo);
//		System.out.println(vo.getPno());
//		System.out.println(vo.getPfimgname());
//		System.out.println(vo.getPpimgname());
//		System.out.println("uok6");
		return "redirect:/admin";
	}

	//상품 삭제여부 처리
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String productDelete(@RequestParam(required = false) Integer pno) 
	{
        // 예외 처리
		if (pno == null || pno == 0) return "잘못된 접근입니다."; 

		int result = adminrepository.productDelete(pno);
		if (result == 0) return "fail";

		return "ok";
	}
	
	//관리자 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String adminLogin() 
	{
		return "admin/login";
	}
	
	//관리자 로그인 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String adminLoginOK(UserVO vo,
			HttpServletRequest request) {
		UserVO login = null; //userService.Login(vo);
		
		if(login == null) {
			return "redirect:/admin/login";
		}else {
			request.getSession().setAttribute("login", login);
			return "admin/list";
		}
	}
	
	//주문목록 조회 페이지
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String orderList(@RequestParam(defaultValue = "1")int page, Model model) 
	{	
		int blockSize = 10;    // 한 블럭에 보여줄 페이지 번호 개수
		int sizePerPage = 15;  // 한 페이지에 보여줄 상품 개수
		SearchVO vo = new SearchVO();
//		vo.setPkind(pkind);
		vo.setPageno(page, sizePerPage);
		//전체 갯수
		int total = adminrepository.GetTotal(vo);
		
		// 전체 페이지 수
		int maxpage = total / sizePerPage;
		if ( total % sizePerPage != 0 ) maxpage++;

		// 블럭 시작/끝 번호 계산
		int startbk = ((page - 1) / blockSize) * blockSize + 1;
		int endbk = startbk + blockSize - 1;
		if ( endbk > maxpage ) endbk = maxpage;

		List<OrdersVO> list = adminrepository.orderList();

		model.addAttribute("total",total);
		model.addAttribute("maxpage",maxpage);
		model.addAttribute("currentPage", page);
		
		model.addAttribute("startbk",startbk);
		model.addAttribute("endbk",endbk);
		
		model.addAttribute("searchvo",vo);
		
		model.addAttribute("list",list);
		
		return "admin/order_list";
	}
	
	//주문내역 수정 페이지
	@RequestMapping(value = "/orderSet", method = RequestMethod.GET)
	public String orderSet(Integer ono, Model model) 
	{
		System.out.println("err3");
		// 예외 처리
		if (ono == null || ono.equals("")) return "redirect:/admin/order_list";

//		System.out.println(ono);
		ManageVO vo = adminrepository.orderSelect(ono);
		// System.out.println(vo.getUno());
//		 System.out.println(vo.getScode());
//		 System.out.println(vo.getUnick());
		if (vo == null ) return "redirect:/admin/order_list";
//		System.out.println("err1");
		model.addAttribute("item", vo );
//		System.out.println("err2");
		return "admin/order_set";
	}

	//주문내역 수청 처리
	@RequestMapping(value = "/orderSet", method = RequestMethod.POST)
	@ResponseBody
	public String orderSetOK(ManageVO vo)
	{
	    // 예외 처리
		if ( vo == null ) return "잘못된 요청입니다.";
	
		int result = adminrepository.orderSet(vo);
		if (result == 0) return "fail";
		return "ok";
	}
	
	//매출조회
	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String sales()
	{
		return "admin/sales";
	}
	
//	//관리자로그인 검사
//	@
//	public boolean adminLoginCheck(HttpServletRequest request) {
//		UserVO vo = (UserVO)request.
//		return false;
//	}
		
}
