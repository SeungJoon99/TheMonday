/************************************
 * 클래스 기능 : 주문상세 정보 클래스
 * 작성자 : 최연흠
 * 작성일 : 2025.10.15
 ************************************/

package com.ezen.vo;

public class DetailVO {
    private int    o_no;        //주문번호
    private int    p_no;        //상품번호
    private String p_img;       //이미지
    private String p_name;      //상품명
    private String d_option;    //상품옵션
    private int    d_qty;       //수량
    private int    d_total;     //상품 총 가격

    public int getO_no()        {      return o_no;     }
    public int getP_no()        {      return p_no;     }
    public String getP_img()    {      return p_img;    }
    public String getP_name()   {      return p_name;   }
    public String getD_option() {      return d_option; }
    public int getD_qty()       {      return d_qty;    }
    public int getD_total()     {      return d_total;  }

    public void setO_no(int o_no)		      {    this.o_no     = o_no;     }
    public void setP_no(int p_no)		      {    this.p_no     = p_no;     }
    public void setP_img(String p_img)		  {    this.p_img    = p_img;    }
    public void setP_name(String p_name)	  {    this.p_name   = p_name;   }
    public void setD_option(String d_option)  {    this.d_option = d_option; }
    public void setD_qty(int d_qty)		      {    this.d_qty    = d_qty;    }
    public void setD_total(int d_total)       {    this.d_total  = d_total;  }
    
    
}
