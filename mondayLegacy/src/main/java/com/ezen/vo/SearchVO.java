package com.ezen.vo;

public class SearchVO 
{
	private int    pageno;  //페이지 번호
	private int    offset;  //limit 시작번호
	private String kind;    //게시물 종류
	private String keyword; //검색 키워드	
	private String hkind;   //게시물종류
	private String hdisplay; //게시물 표시 여부	
	
	public String getHkind() {
		return hkind;
	}
	public void setHkind(String pkind) {
		this.hkind = pkind;
	}
	public String getHdisplay() {
		return hdisplay;
	}
	public void setHdisplay(String pdisplay) {
		this.hdisplay = pdisplay;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int    getPageno()  { return pageno;  } 
	public int    getOffset()  { return offset;  }	
	public String getKind()    { return kind;	 }
	public String getKeyword() { return keyword; }
	
	public void setPageno(int pageno) 
	{ 
		this.pageno = pageno;
		this.offset = (this.pageno - 1) * 10; 
	}	
	public void setKind(String kind)       { this.kind = kind;      }
	public void setKeyword(String keyword) { this.keyword = keyword;}
	
}
