package com.ezen.vo;
/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 유저 테이블 VO
 */
public class UserVO 
{
    private int    u_no;       //유저번호
    private String u_nick;     //유저닉네임
    private String u_email;    //유저이메일
    private String u_pw;       //유저비밀번호
    private String u_hp;       //유저전화번호
    private String u_type;     //유저구분번호
    private String u_postcode; //유저우편번호
    private String u_old;      //유저지번
    private String u_addr;     //유저도로명주소
    private String u_addr2;    //유저상세주소
    private String u_name;     //유저이름
    private String u_delyn;    //유저탈퇴여부
    private String u_wdate;    //유저등록일
    private String u_udate;    //유저수정일

    public int    getNo()       { return u_no;       }
    public String getNick()     { return u_nick;     }
    public String getEmail()    { return u_email;    }
    public String getPw()       { return u_pw;       }
    public String getHp()       { return u_hp;       }
    public String getType()     { return u_type;     }
    public String getPostcode() { return u_postcode; }
    public String getOld()      { return u_old;      }
    public String getAddr()     { return u_addr;     }
    public String getAddr2()    { return u_addr2;    }
    public String getName()     { return u_name;     }
    public String getDelyn()    { return u_delyn;    }
    public String getWdate()    { return u_wdate;    }
    public String getUdate()    { return u_udate;    }

    public void setNo(int u_no)                { this.u_no       = u_no;       }
    public void setNick(String u_nick)         { this.u_nick     = u_nick;     }
    public void setEmail(String u_email)       { this.u_email    = u_email;    }
    public void setPw(String u_pw)             { this.u_pw       = u_pw;       }
    public void setHp(String u_hp)             { this.u_hp       = u_hp;       }
    public void setType(String u_type)         { this.u_type     = u_type;     }
    public void setPostcode(String u_postcode) { this.u_postcode = u_postcode; }
    public void setOld(String u_old)           { this.u_old      = u_old;      }
    public void setAddr(String u_addr)         { this.u_addr     = u_addr;     }
    public void setAddr2(String u_addr2)       { this.u_addr2    = u_addr2;    }
    public void setName(String u_name)         { this.u_name     = u_name;     }
    public void setDelyn(String u_delyn)       { this.u_delyn    = u_delyn;    }
    public void setWdate(String u_wdate)       { this.u_wdate    = u_wdate;    }
    public void setUdate(String u_udate)       { this.u_udate    = u_udate;    }
}
