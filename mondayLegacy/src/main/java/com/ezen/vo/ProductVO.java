package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 상품 테이블 VO
 */
public class ProductVO 
{
    private int p_no;         //상품번호
    private int p_parentno;   //부모상품번호
    private int p_price;      //가격
    private String p_info;    //상품설명
    private String p_name;    //상품명
    private String p_wdate;   //등록일
    private String p_display; //진열여부
    private String p_color;   //색상
    private String p_size;    //사이즈
    private String p_kind;    //카테고리명
    private String p_delyn;   //상품삭제여부

    public int    getP_no()       { return p_no;       }
    public int    getP_parentno() { return p_parentno; }
    public int    getP_price()    { return p_price;    }
    public String getP_info()     { return p_info;     }
    public String getP_name()     { return p_name;     }
    public String getP_wdate()    { return p_wdate;    }
    public String getP_display()  { return p_display;  }
    public String getP_color()    { return p_color;    }
    public String getP_size()     { return p_size;     }
    public String getP_kind()     { return p_kind;     }
    public String getP_delyn()    { return p_delyn;    }

    public void setP_no(int p_no)              { this.p_no       = p_no;       }
    public void setP_parentno(int p_parentno)  { this.p_parentno = p_parentno; }
    public void setP_price(int p_price)        { this.p_price    = p_price;    }
    public void setP_info(String p_info)       { this.p_info     = p_info;     }
    public void setP_name(String p_name)       { this.p_name     = p_name;     }
    public void setP_wdate(String p_wdate)     { this.p_wdate    = p_wdate;    }
    public void setP_display(String p_display) { this.p_display  = p_display;  }
    public void setP_color(String p_color)     { this.p_color    = p_color;    }
    public void setP_size(String p_size)       { this.p_size     = p_size;     }
    public void setP_kind(String p_kind)       { this.p_kind     = p_kind;     }
    public void setP_delyn(String p_delyn)     { this.p_delyn    = p_delyn;    }

    
}
