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

	 */
	
	private final static String uploadPath = "D:\\YH\\Dhub\\github\\storeproject\\TheMonday\\mondayLegacy\\src\\main\\webapp\\resources\\images";
	@Autowired
	AdminRepository adminrepositoy;
	
	@Autowired
	ServletContext context;

	//상품등록
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert()
	{
		context.getRealPath("/resources/images");
		return "admin/insert";
	}

	//상품등록처리
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertOK(@ModelAttribute ProductVO vo,
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
			
			//첨부파일 객체 생성
			File newFile = new File(uploadPath + "\\" + savedFileName + fileExt);
			//실제 저장해야하는 폴더로 업로드 된 파일을 옮긴다.
			//실제 저장 디렉토리로 전송
			file.transferTo(newFile); //받아온 file을 newFile이 가지고있는 path에 (newFile객체에 담아서??)전송한다
			
			vo.setPfimgname(originalFileName);			//원본파일명(논리파일)
			vo.setPpimgname(savedFileName + fileExt);	//저장파일명(물리파일)
		}
		adminrepositoy.insert(vo);
		System.out.println("err3");
		return "redirect:/admin";
	}
	
	//상품 목록 조회
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String list(Model model)
	{
		List<ProductVO> list = adminrepositoy.list();
		
		model.addAttribute("list", list);
		
		return "admin/list";
	}
	
	//상품 목록 조회
	@RequestMapping(value = "/listk", method = RequestMethod.GET)
	public String listK(ProductVO vo) 
	{
		return "";
	}
	//상품 목록 조회
	@RequestMapping(value = "/listd", method = RequestMethod.GET)
	public String listD(ProductVO vo) 
	{
		return "";
	}
	
	//상품수정
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update() 
	{
		return "admin/update";
	}
	
	//상품수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateOK() 
	{
		return "redirect:";
	}
	
	//관리자 로그인
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
	
	//주문 내역 조회
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String orderList(Model model) 
	{		
		List<OrdersVO> list = adminrepositoy.orderList();
		
		model.addAttribute("list",list);
		
		return "admin/order_list";
	}
	
	//주문내역 수정
	@RequestMapping(value = "/order_set", method = RequestMethod.GET)
	public String orderSet() 
	{
		return "admin/order_set";
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
