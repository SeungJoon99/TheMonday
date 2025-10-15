package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문 테이블 VO
 */
public class OrdersVO 
{
    private int    o_no;       //주문번호
    private int    u_no;       //유저번호
    private String u_hp;       //전화번호
    private String u_postcode; //우편번호
    private String u_old;      //유저지번
    private String u_addr;     //유저도로명주소
    private String u_addr2;    //유저상세주소
    private String o_request;  //요청사항
    private String o_date;     //주문일
    private int    o_total;    //총 주문가격
    
    public int    getO_no()       { return o_no;       }
    public int    getU_no()       { return u_no;       }
    public String getU_hp()       { return u_hp;       }
    public String getU_postcode() { return u_postcode; }
    public String getU_old()      { return u_old;      }
    public String getU_addr()     { return u_addr;     }
    public String getU_addr2()    { return u_addr2;    }
    public String getO_request()  { return o_request;  }
    public String getO_date()     { return o_date;     }
    public int    getO_total()    { return o_total;    }

    public void setO_no(int o_no)                { this.o_no       = o_no;       }
    public void setU_no(int u_no)                { this.u_no       = u_no;       }
    public void setU_hp(String u_hp)             { this.u_hp       = u_hp;       }
    public void setU_postcode(String u_postcode) { this.u_postcode = u_postcode; }
    public void setU_old(String u_old)           { this.u_old      = u_old;      }
    public void setU_addr(String u_addr)         { this.u_addr     = u_addr;     }
    public void setU_addr2(String u_addr2)       { this.u_addr2    = u_addr2;    }
    public void setO_request(String o_request)   { this.o_request  = o_request;  }
    public void setO_date(String o_date)         { this.o_date     = o_date;     }
    public void setO_total(int o_total)          { this.o_total    = o_total;    }
    
    
}
