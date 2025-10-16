package com.ezen.vo;

public class SearchVO 
{
	private int    pageno;  //페이지 번호
	private int    offset;  //limit 시작번호
	private String kind;    //게시물 종류
	private String keyword; //검색 키워드	
	private String pkind; //검색 키워드	
	private String pdisplay; //검색 키워드	
	
	public String getPkind() {
		return pkind;
	}
	public void setPkind(String pkind) {
		this.pkind = pkind;
	}
	public String getPdisplay() {
		return pdisplay;
	}
	public void setPdisplay(String pdisplay) {
		this.pdisplay = pdisplay;
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
