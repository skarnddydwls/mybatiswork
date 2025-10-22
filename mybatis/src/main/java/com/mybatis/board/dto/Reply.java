package com.mybatis.board.dto;

public class Reply {
	private int no;
	private String content;
	private int bno;
	private String writer;
	private String createDate;
	private String status;
	
	
	public Reply() {
	}
	public Reply(int no, String content, int bno, String writer, String createDate, String status) {
		this.no = no;
		this.content = content;
		this.bno = bno;
		this.writer = writer;
		this.createDate = createDate;
		this.status = status;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Reply [no=" + no + ", content=" + content + ", bno=" + bno + ", writer=" + writer + ", createDate="
				+ createDate + ", status=" + status + "]";
	}
}
