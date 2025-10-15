package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 장바구니 테이블 VO
 */
public class CartVO 
{
    private int    p_no;    //상품번호
    private int    u_no;    //유저번호
    private String c_wdate; //장바구니 등록일
    private int    c_qty;   //수량

    public int    getP_no()    { return p_no;    }
    public int    getU_no()    { return u_no;    }
    public String getC_wdate() { return c_wdate; }
    public int    getC_qty()   { return c_qty;   }

    public void setP_no(int p_no)          { this.p_no    = p_no;    }
    public void setU_no(int u_no)          { this.u_no    = u_no;    }
    public void setC_wdate(String c_wdate) { this.c_wdate = c_wdate; }
    public void setC_qty(int c_qty)        { this.c_qty   = c_qty;   }
}

