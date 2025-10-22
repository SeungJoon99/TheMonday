package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 장바구니 테이블 VO
 */
public class CartVO 
{
    private int       pno;     //상품번호
    private int       uno;     //유저번호
    private String    cwdate;  //장바구니 등록일
    private int       cqty;    //수량
    private ProductVO product; //join 용 상품객체
    private int       ototal;  //장바구니 전체 총 가격
    

	public int getOtotal() {
		return ototal;
	}
	public void setOtotal(int ototal) {
		this.ototal = ototal;
	}
	public ProductVO getProduct() {
		return product;
	}
	public void setProduct(ProductVO product) {
		this.product = product;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public String getCwdate() {
		return cwdate;
	}
	public void setCwdate(String cwdate) {
		this.cwdate = cwdate;
	}
	public int getCqty() {
		return cqty;
	}
	public void setCqty(int cqty) {
		this.cqty = cqty;
	}
	
}

