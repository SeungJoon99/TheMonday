/************************************
 * 클래스 기능 : 주문상세 정보 클래스
 * 작성자 : 최연흠
 * 작성일 : 2025.10.15
 ************************************/

package com.ezen.vo;

public class DetailVO {
    private int    oNo;        //주문번호
    private int    pNo;        //상품번호
    private String pImg;       //이미지
    private String pName;      //상품명
    private String dOption;    //상품옵션
    private int    dQty;       //수량
    private int    dTotal;     //상품 총 가격
	public int getoNo() {
		return oNo;
	}
	public void setoNo(int oNo) {
		this.oNo = oNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getdOption() {
		return dOption;
	}
	public void setdOption(String dOption) {
		this.dOption = dOption;
	}
	public int getdQty() {
		return dQty;
	}
	public void setdQty(int dQty) {
		this.dQty = dQty;
	}
	public int getdTotal() {
		return dTotal;
	}
	public void setdTotal(int dTotal) {
		this.dTotal = dTotal;
	}
}
