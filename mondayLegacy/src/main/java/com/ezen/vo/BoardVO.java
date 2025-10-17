package com.ezen.vo;

import java.util.List;

public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private List<ReplyVO> reply;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<ReplyVO> getReply() {
		return reply;
	}
	public void setReply(List<ReplyVO> reply) {
		this.reply = reply;
	}
}
