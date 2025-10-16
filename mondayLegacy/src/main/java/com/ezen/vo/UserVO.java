package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 유저 테이블 VO
 */
public class UserVO 
{
    private int    uNo;       //유저번호
    private String uNick;     //유저닉네임
    private String uEmail;    //유저이메일
    private String uPw;       //유저비밀번호
    private String uHp;       //유저전화번호
    private String uType;     //유저구분번호
    private String uPostcode; //유저우편번호
    private String uOld;      //유저지번
    private String uAddr;     //유저도로명주소
    private String uAddr2;    //유저상세주소
    private String uName;     //유저이름
    private String uDelyn;    //유저탈퇴여부
    private String uWdate;    //유저등록일
    private String uUdate;    //유저수정일
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getuNick() {
		return uNick;
	}
	public void setuNick(String uNick) {
		this.uNick = uNick;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public String getuHp() {
		return uHp;
	}
	public void setuHp(String uHp) {
		this.uHp = uHp;
	}
	public String getuType() {
		return uType;
	}
	public void setuType(String uType) {
		this.uType = uType;
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
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuDelyn() {
		return uDelyn;
	}
	public void setuDelyn(String uDelyn) {
		this.uDelyn = uDelyn;
	}
	public String getuWdate() {
		return uWdate;
	}
	public void setuWdate(String uWdate) {
		this.uWdate = uWdate;
	}
	public String getuUdate() {
		return uUdate;
	}
	public void setuUdate(String uUdate) {
		this.uUdate = uUdate;
	}

}
