package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문내역 관리 테이블 VO
 */
public class ManageVO 
{
    private int    oNo;    //주문번호
    private int    uNo;    //유저번호
    private String mMemo;  //관리자메모
    private String mState; //주문상태
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
	public String getmMemo() {
		return mMemo;
	}
	public void setmMemo(String mMemo) {
		this.mMemo = mMemo;
	}
	public String getmState() {
		return mState;
	}
	public void setmState(String mState) {
		this.mState = mState;
	}
    
  

    
}
