package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문 테이블 VO
 *  
 *  수정일 : 2025.10.21
 *  수정자 : 최연흠
 *  내용  : orderList 페이지에서 필요한 필드, get/set 메소드 추가
 */
public class OrdersVO 
{
    private int    ono;       //주문번호
    private int    uno;       //유저번호
    private String uhp;       //전화번호
    private String upostcode; //우편번호
    private String uold;      //유저지번
    private String uaddr;     //유저도로명주소
    private String uaddr2;    //유저상세주소
    private String orequest;  //요청사항
    private String odate;     //주문일
    private int    ototal;    //총 주문가격

	//관리자 주문조회용 필드
	private String pname;     //상품요약
	private String svalue;    //주문상태
	
	//회원 마이페이지용
	private int    pno;       //상품번호
	private String ppimgname; //상품 이미지 물리명
	
    
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPpimgname() {
		return ppimgname;
	}
	public void setPpimgname(String ppimgname) {
		this.ppimgname = ppimgname;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public String getUhp() {
		return uhp;
	}
	public void setUhp(String uhp) {
		this.uhp = uhp;
	}
	public String getUpostcode() {
		return upostcode;
	}
	public void setUpostcode(String upostcode) {
		this.upostcode = upostcode;
	}
	public String getUold() {
		return uold;
	}
	public void setUold(String uold) {
		this.uold = uold;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public String getUaddr2() {
		return uaddr2;
	}
	public void setUaddr2(String uaddr2) {
		this.uaddr2 = uaddr2;
	}
	public String getOrequest() {
		return orequest;
	}
	public void setOrequest(String orequest) {
		this.orequest = orequest;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public int getOtotal() {
		return ototal;
	}
	public void setOtotal(int ototal) {
		this.ototal = ototal;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getSvalue() {
		return svalue;
	}
	public void setSvalue(String svalue) {
		this.svalue = svalue;
	}
}
