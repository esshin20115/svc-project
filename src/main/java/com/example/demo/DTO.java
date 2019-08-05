package com.example.demo;

public class DTO{
	
	private int id;
	private String title;
	private String due_date;
	private String submission_date;
	private int num_fund;
	private int cur_fund;
	private int goal_fund;
	private int likes;
	private String account_src;
	private String account_num;
	private String content;
	
	public DTO(int id, String title, String due_date, String submission_date,int num_fund, int cur_fund, int goal_fund,int likes, String account_src, String account_num, String content) {
		
		this.id=id;
		this.title=title;
		this.due_date=due_date;
		this.submission_date=submission_date;
		this.num_fund=num_fund;
		this.cur_fund=cur_fund;
		this.goal_fund=goal_fund;
		this.likes=likes;
		this.account_src=account_src;
		this.account_num=account_num;
		this.content=content;
		
	}
	public int getId() {
		
		return id;
	}
	public String getTitle() {
		
		return title;
	}
	public String getDue_date() {
		
		return due_date;
	}
	public String getSubmission_date() {
	
	return submission_date;
	}
	public int getNum_fund() {
		return num_fund;
	}
	public int getCur_fund() {
		return cur_fund;
	}
	public int getGoal_fund() {
		return goal_fund;
	}
	public int getLikes() {
		return likes;
	}
	
//	public void setLikes() {
//		
//		
//
//		System.out.println("likes"+this.likes);
//		this.likes=this.getLikes()+1;
//	}
	
	public String getAccount_src() {
		
		return account_src;
	}
	public String getAccount_num() {
		
		return account_num;
	}
	public String getContent() {
		return content;
	}
	
}