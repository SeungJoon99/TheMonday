/************************************
 * 클래스 기능 : 주문상세 정보 클래스
 * 작성자 : 최연흠
 * 작성일 : 2025.10.15
 ************************************/

package com.ezen.vo;

public class DetailVO {
    private int    ono;        //주문번호
    private int    pno;        //상품번호
    private String pimg;       //이미지
    private String pname;      //상품명
    private String option;     //상품옵션
    private int    dqty;       //수량
    private int    dtotal;     //상품 총 가격
	public int getOno() {
		return ono;
	}
	public void setOno(int ono) {
		this.ono = ono;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public int getDqty() {
		return dqty;
	}
	public void setDqty(int dqty) {
		this.dqty = dqty;
	}
	public int getDtotal() {
		return dtotal;
	}
	public void setDtotal(int dtotal) {
		this.dtotal = dtotal;
	}

}
