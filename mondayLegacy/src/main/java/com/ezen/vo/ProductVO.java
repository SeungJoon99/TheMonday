package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 상품 테이블 VO
 */
public class ProductVO 
{
    private int    pNo;       //상품번호
    private int    pParentno; //부모상품번호
    private int    pPrice;    //가격
    private String pInfo;     //상품설명
    private String pName;     //상품명
    private String pWdate;    //등록일
    private String pDisplay;  //진열여부
    private String pColor;    //색상
    private String pSize;     //사이즈
    private String pKind;     //카테고리명
    private String pDelyn;    //상품삭제여부
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getpParentno() {
		return pParentno;
	}
	public void setpParentno(int pParentno) {
		this.pParentno = pParentno;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public String getpInfo() {
		return pInfo;
	}
	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpWdate() {
		return pWdate;
	}
	public void setpWdate(String pWdate) {
		this.pWdate = pWdate;
	}
	public String getpDisplay() {
		return pDisplay;
	}
	public void setpDisplay(String pDisplay) {
		this.pDisplay = pDisplay;
	}
	public String getpColor() {
		return pColor;
	}
	public void setpColor(String pColor) {
		this.pColor = pColor;
	}
	public String getpSize() {
		return pSize;
	}
	public void setpSize(String pSize) {
		this.pSize = pSize;
	}
	public String getpKind() {
		return pKind;
	}
	public void setpKind(String pKind) {
		this.pKind = pKind;
	}
	public String getpDelyn() {
		return pDelyn;
	}
	public void setpDelyn(String pDelyn) {
		this.pDelyn = pDelyn;
	}

}
