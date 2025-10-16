/***********************************
 * 클래스 기능 : 게시물 검색 정보 클래스
 * 작성자 : 정정훈
 * 작성일 : 2025.09.12
 **********************************/
package com.ezen.vo;

public class SearchVO 
{
	private int    pageno;  //페이지 번호
	private int    offset;  //limit 시작번호
	private String kind;    //게시물 종류
	private String keyword; //검색 키워드	
	
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
