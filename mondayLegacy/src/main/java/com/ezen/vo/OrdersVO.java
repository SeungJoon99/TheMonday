package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문 테이블 VO
 */
public class OrdersVO 
{
    private int    oNo;       //주문번호
    private int    uNo;       //유저번호
    private String uHp;       //전화번호
    private String uPostcode; //우편번호
    private String uOld;      //유저지번
    private String uAddr;     //유저도로명주소
    private String uAddr2;    //유저상세주소
    private String oRequest;  //요청사항
    private String oDate;     //주문일
    private int    oTotal;    //총 주문가격
	public int getoNo() {
		return oNo;
	}
	public void setoNo(int oNo) {
		this.oNo = oNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getuHp() {
		return uHp;
	}
	public void setuHp(String uHp) {
		this.uHp = uHp;
	}
	public String getuPostcode() {
		return uPostcode;
	}
	public void setuPostcode(String uPostcode) {
		this.uPostcode = uPostcode;
	}
	public String getuOld() {
		return uOld;
	}
	public void setuOld(String uOld) {
		this.uOld = uOld;
	}
	public String getuAddr() {
		return uAddr;
	}
	public void setuAddr(String uAddr) {
		this.uAddr = uAddr;
	}
	public String getuAddr2() {
		return uAddr2;
	}
	public void setuAddr2(String uAddr2) {
		this.uAddr2 = uAddr2;
	}
	public String getoRequest() {
		return oRequest;
	}
	public void setoRequest(String oRequest) {
		this.oRequest = oRequest;
	}
	public String getoDate() {
		return oDate;
	}
	public void setoDate(String oDate) {
		this.oDate = oDate;
	}
	public int getoTotal() {
		return oTotal;
	}
	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}
 
    
    
}
