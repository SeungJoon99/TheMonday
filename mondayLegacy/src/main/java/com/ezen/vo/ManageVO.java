package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문내역 관리 테이블 VO
 */
public class ManageVO 
{
    private int    ono;    //주문번호
    private String scode;  //주문상태
    private String mmemo;  //관리자메모

	//관리자 주문조회용 필드
    private int    uno;    //유저번호
	private String unick;  //유저닉네임
	
	// 응답용
    private boolean success;
    private String message;
	
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public String getMmemo() {
		return mmemo;
	}
	public void setMmemo(String mmemo) {
		this.mmemo = mmemo;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public String getUnick() {
		return unick;
	}
	public void setUnick(String unick) {
		this.unick = unick;
	}



    
}
