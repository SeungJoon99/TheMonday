/*
 *  작성일 : 2025.10.15
 *  작성자 : 유재욱
 *  기능 : 문의 테이블 VO
 */
package com.ezen.vo;

public class HelpVO 
{
    private int    hNo;     //게시물번호
    private String uNick;   //유저닉네임
    private String hKind;   //문의종류
    private String hTitle;  //제목
    private String hNote;   //내용
    private String hWdate;  //작성일
    private String hUpdate; //수정일
    private String uEmail;  //이메일
    
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public int gethNo() {
		return hNo;
	}
	public void sethNo(int hNo) {
		this.hNo = hNo;
	}
	public String getuNick() {
		return uNick;
	}
	public void setuNick(String uNick) {
		this.uNick = uNick;
	}
	public String gethKind() {
		return hKind;
	}
	public void sethKind(String hKind) {
		this.hKind = hKind;
	}
	public String gethTitle() {
		return hTitle;
	}
	public void sethTitle(String hTitle) {
		this.hTitle = hTitle;
	}
	public String gethNote() {
		return hNote;
	}
	public void sethNote(String hNote) {
		this.hNote = hNote;
	}
	public String gethWdate() {
		return hWdate;
	}
	public void sethWdate(String hWdate) {
		this.hWdate = hWdate;
	}
	public String gethUpdate() {
		return hUpdate;
	}
	public void sethUpdate(String hUpdate) {
		this.hUpdate = hUpdate;
	}
    
    

    
}
