/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 문의 테이블 VO
 */
package com.ezen.vo;

public class HelpVO 
{
    private int    hno;     //게시물번호
    private String unick;   //유저닉네임
    private String hkind;   //문의종류
    private String htitle;  //제목
    private String hnote;   //내용
    private String hwdate;  //작성일
    private String hupdate; //수정일
    private String uemail;  //이메일
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public String getUnick() {
		return unick;
	}
	public void setUnick(String unick) {
		this.unick = unick;
	}
	public String getHkind() {
		return hkind;
	}
	public void setHkind(String hkind) {
		this.hkind = hkind;
	}
	public String getHtitle() {
		return htitle;
	}
	public void setHtitle(String htitle) {
		this.htitle = htitle;
	}
	public String getHnote() {
		return hnote;
	}
	public void setHnote(String hnote) {
		this.hnote = hnote;
	}
	public String getHwdate() {
		return hwdate;
	}
	public void setHwdate(String hwdate) {
		this.hwdate = hwdate;
	}
	public String getHupdate() {
		return hupdate;
	}
	public void setHupdate(String hupdate) {
		this.hupdate = hupdate;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
      
}
