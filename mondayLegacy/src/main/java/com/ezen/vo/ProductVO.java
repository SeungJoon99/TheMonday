package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 상품 테이블 VO
 * 
 *  수정일 : 2025.10.21
 *  수정자 : 최연흠
 *  내용  : 부모상품번호, 옵션 삭제, html 처리 메서드, 이미지필드
 */
public class ProductVO
{
    private int    pno;       //상품번호
    private String pname;     //상품명
    private int    pprice;    //가격
    private String pinfo;     //상품설명
    private String pwdate;    //등록일
    private String ppimgname; //물리파일명
    private String pfimgname; //논리파일명
    private String pkind;     //카테고리명
    private String pdisplay;  //진열여부
    private String pdelyn;    //상품삭제여부
    
	
	public String getPpimgname() {
		return ppimgname;
	}
	public void setPpimgname(String ppimgname) {
		this.ppimgname = ppimgname;
	}
	public String getPfimgname() {
		return pfimgname;
	}
	public void setPfimgname(String pfimgname) {
		this.pfimgname = pfimgname;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPinfo() {
		return pinfo;
	}
	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}
	public String getHTML() 	 {
		String pinfo = this.pinfo;
		//HTML을 텍스트로 변환
		pinfo = pinfo.replace("<", "&lt");
		pinfo = pinfo.replace(">", "&gt");
		pinfo = pinfo.replace("\n", "\n<br>");
		return pinfo;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPwdate() {
		return pwdate;
	}
	public void setPwdate(String pwdate) {
		this.pwdate = pwdate;
	}
	public String getPdisplay() {
		return pdisplay;
	}
	public void setPdisplay(String pdisplay) {
		this.pdisplay = pdisplay;
	}
	public String getPkind() {
		return pkind;
	}
	public void setPkind(String pkind) {
		this.pkind = pkind;
	}
	public String getPdelyn() {
		return pdelyn;
	}
	public void setPdelyn(String pdelyn) {
		this.pdelyn = pdelyn;
	}
	
}
