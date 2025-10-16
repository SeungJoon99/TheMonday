package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 상품 테이블 VO
 */
public class ProductVO 
{
    private int    pno;       //상품번호
    private int    pparentno; //부모상품번호
    private int    pprice;    //가격
    private String pinfo;     //상품설명
    private String pname;     //상품명
    private String pwdate;    //등록일
    private String pdisplay;  //진열여부
    private String pcolor;    //색상
    private String psize;     //사이즈
    private String pkind;     //카테고리명
    private String pdelyn;    //상품삭제여부
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getPparentno() {
		return pparentno;
	}
	public void setPparentno(int pparentno) {
		this.pparentno = pparentno;
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
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
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
