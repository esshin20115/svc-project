package com.example.demo;

public class DTO_comment{
	
	private int seq;
	private int id;
	private String nickname;
	private String content;
	private String reg_date;
	
	public DTO_comment(int seq, int id, String nickname, String content,String reg_date) {
		this.seq=seq;
		this.id=id;
		this.nickname=nickname;
		this.content=content;
		this.reg_date=reg_date;
		
	}
	public int getSeq() {
		
		return seq;
	}
	public int getId() {
		
		return id;
	}
	public String getNickname() {
		
		return nickname;
	}
	public String getContent() {
		
		return content;
	}
	public String getReg_date() {
		
		return reg_date;
	}
	
}