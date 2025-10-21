package com.ezen.vo;

import org.springframework.beans.factory.annotation.Value;

/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 관리자 답변 테이블
 */
public class AnswerVO 
{
    private int    hno;    // 게시물번호
    private int    uno;	   //F유저번호
    private String atext;  // 내용
    private String awdate; // 작성일
    
    
	public int getHno() {
		return hno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public String getAtext() {
		return atext;
	}
	public void setAtext(String atext) {
		this.atext = atext;
	}
	public String getAwdate() {
		return awdate;
	}
	public void setAwdate(String awdate) {
		this.awdate = awdate;
	}
    
}
