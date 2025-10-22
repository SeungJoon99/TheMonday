package com.ezen.vo;

public class SearchVO 
{
	private int    pageno;   //페이지 번호
	private int    offset;   //limit 시작번호
	private String kind;     //게시물 종류
	private String keyword;  //검색 키워드	
	private String hkind;    //게시물종류
	private String pkind;    //상품카테고리
	private String hdisplay; //게시물 표시 여부	
	private int    pno; 	 //상품번호	
	
	private int    sizePerPage = 16; //한 페이지에 나오는 상품 개수
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPkind() {
		return pkind;
	}
	public void setPkind(String pkind) {
		this.pkind = pkind;
	}
	
	
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
		this.pageno = pageno < 1 ? 1 : pageno;
		this.offset = (this.pageno - 1) * sizePerPage; 
	}
	
	public void setPageno(int pageno, int sizePerPage) 
	{ 
		this.pageno = pageno < 1 ? 1 : pageno;
		this.offset = (this.pageno - 1) * sizePerPage; 
	}	
	public void setKind(String kind)       { this.kind = kind;      }
	public void setKeyword(String keyword) { this.keyword = keyword;}
	
}
