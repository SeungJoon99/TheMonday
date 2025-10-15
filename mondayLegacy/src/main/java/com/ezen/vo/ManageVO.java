package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 주문내역 관리 테이블 VO
 */
public class ManageVO 
{
    private int    o_no;    //주문번호
    private int    u_no;    //유저번호
    private String m_memo;  //관리자메모
    private String m_state; //주문상태
    
    public int    getO_no()    { return o_no;    }
    public int    getU_no()    { return u_no;    }
    public String getM_memo()  { return m_memo;  }
    public String getM_state() { return m_state; }

    public void setO_no(int o_no)          { this.o_no    = o_no;    }
    public void setU_no(int u_no)          { this.u_no    = u_no;    }
    public void setM_memo(String m_memo)   { this.m_memo  = m_memo;  }
    public void setM_state(String m_state) { this.m_state = m_state; }

    
}
