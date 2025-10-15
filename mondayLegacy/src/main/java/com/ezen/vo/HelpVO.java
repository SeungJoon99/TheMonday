/************************************
 * 클래스 기능 : 문의게시판 정보 클래스
 * 작성자 : 최연흠
 * 작성일 : 2025.10.15
 ************************************/

package com.ezen.vo;

public class HelpVO {
	private int	   h_no;        //게시물번호
	private String u_nick;      //유저닉네임
	private String h_kind;      //문의종류
	private String h_title;     //제목
	private String h_note;      //내용
	private String h_wdate;     //작성일
	private String h_update;    //수정일

	public String getH_no() 	 {		return h_no;		}
	public String getU_nick()	 {		return u_nick;		}
	public String getH_kind()	 {		return h_kind;		}
	public String getH_title()	 {		return h_title;		}
	public String getH_note()	 {		return h_note;		}
	public String getH_wdate()	 {		return h_wdate;		}
	public String getH_update()	 {		return h_update;	}

	public void setH_no(String h_no) 		 {		this.h_no     = h_no;		}
	public void setU_nick(String u_nick) 	 {		this.u_nick   = u_nick;		}
	public void setH_kind(String h_kind) 	 {		this.h_kind   = h_kind;		}
	public void setH_title(String h_title) 	 {		this.h_title  = h_title;	}
	public void setH_note(String h_note) 	 {		this.h_note	  = h_note;		}
	public void setH_wdate(String h_wdate) 	 {		this.h_wdate  = h_wdate;	}
	public void setH_update(String h_update) {		this.h_update = h_update;	}
	


}
