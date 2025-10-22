package com.mybatis.board.dto;

public class Board {
	private int no;
	private String title;
	private String content;
	private String writer;
	private int count;
	private String createDate;
	private String status;
	
	
	public Board() {
		
	}
	public Board(int no, String title, String content, String writer, int count, String createDate, String status) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.count = count;
		this.createDate = createDate;
		this.status = status;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
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
		return "Board [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + ", count="
				+ count + ", createDate=" + createDate + ", status=" + status + "]";
	}
}
