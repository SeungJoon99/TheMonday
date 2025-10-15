package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 관리자 답변 테이블
 */
public class AnswerVO 
{
    private int    h_no;    //게시물번호
    private String a_text;  //내용
    private String a_wdate; //작성일

    public int getH_no()       { return h_no;    }
    public String getA_text()  { return a_text;  }
    public String getA_wdate() { return a_wdate; }

    public void setH_no(int h_no)          { this.h_no    = h_no;    }
    public void setA_text(String a_text)   { this.a_text  = a_text;  }
    public void setA_wdate(String a_wdate) { this.a_wdate = a_wdate; }

    
}
