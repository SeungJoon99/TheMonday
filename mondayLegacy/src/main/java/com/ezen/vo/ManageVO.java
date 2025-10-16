package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문내역 관리 테이블 VO
 */
public class ManageVO 
{
    private int    ono;    //주문번호
    private int    uno;    //유저번호
    private String mmemo;  //관리자메모
    private String mstate; //주문상태
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
	public String getMmemo() {
		return mmemo;
	}
	public void setMmemo(String mmemo) {
		this.mmemo = mmemo;
	}
	public String getMstate() {
		return mstate;
	}
	public void setMstate(String mstate) {
		this.mstate = mstate;
	}
	
  

    
}
