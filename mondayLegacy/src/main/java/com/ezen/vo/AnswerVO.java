package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 관리자 답변 테이블
 */
public class AnswerVO 
{
    private int    hNo;    //게시물번호
    private String aText;  //내용
    private String aWdate; //작성일
    
	public int gethNo() 		{ return hNo;	 }
	public String getaText() 	{ return aText;	 }
	public String getaWdate() 	{ return aWdate; }
	
	public void sethNo(int hNo) 			{ this.hNo = hNo;		}
	public void setaText(String aText) 		{ this.aText = aText;	}
	public void setaWdate(String aWdate) 	{ this.aWdate = aWdate;	}
    

}
