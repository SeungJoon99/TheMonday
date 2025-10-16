package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 장바구니 테이블 VO
 */
public class CartVO 
{
    private int    pNo;    //상품번호
    private int    uNo;    //유저번호
    private String cWdate; //장바구니 등록일
    private int    cQty;   //수량
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getcWdate() {
		return cWdate;
	}
	public void setcWdate(String cWdate) {
		this.cWdate = cWdate;
	}
	public int getcQty() {
		return cQty;
	}
	public void setcQty(int cQty) {
		this.cQty = cQty;
	}

}

