package com.example.demo;

import java.sql.Connection; 

import java.sql.DriverManager; 
import java.sql.ResultSet; 
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.SQLException;

public class DAO{
	private String url="jdbc:h2:mem:testdb";
	private String uid="sa";
	private String upw="";
	public DAO() {
		
		try {
			
			Class.forName("org.h2.Driver");
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public ArrayList<DTO> memberSelect(){
		
		ArrayList<DTO> dtos=new ArrayList<DTO>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			
			con=DriverManager.getConnection(url,uid,upw);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from svc_table order by id ASC");
			
			while(rs.next()) {
				int id=rs.getInt("id");
				String title=rs.getString("title");
				String due_date=rs.getString("due_date");
				String submission_date=rs.getString("submission_date");
				int num_fund=rs.getInt("num_fund");
				int cur_fund=rs.getInt("cur_fund");
				int goal_fund=rs.getInt("goal_fund");
				int likes=rs.getInt("likes");
				String account_src=rs.getString("account_src");
				String account_num=rs.getString("account_num");
				String content=rs.getString("content");
				
				DTO dto=new DTO(id,title,due_date,submission_date,num_fund,cur_fund,goal_fund,likes,account_src,account_num,content);
				dtos.add(dto);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		return dtos;
	}
	public DTO memberSelect_detail(int idx){
		DTO dto = null;
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			
			con=DriverManager.getConnection(url,uid,upw);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from svc_table order by id ASC");
			
			while(rs.next()) {
				int id=rs.getInt("id");
				if(id!=idx) {
					continue;
				}
				String title=rs.getString("title");
				String due_date=rs.getString("due_date");
				String submission_date=rs.getString("submission_date");
				int num_fund=rs.getInt("num_fund");
				int cur_fund=rs.getInt("cur_fund");
				int goal_fund=rs.getInt("goal_fund");
				int likes=rs.getInt("likes");
				String account_src=rs.getString("account_src");
				String account_num=rs.getString("account_num");
				String content=rs.getString("content");
				dto=new DTO(id,title,due_date,submission_date,num_fund,cur_fund,goal_fund,likes,account_src,account_num,content);
				break;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		return dto;
	}
public int update_likes(int idx) {
	
	DTO dto = null;
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	int new_like=0;
	int likes=0;
	try {
		con=DriverManager.getConnection(url,uid,upw);
		stmt=con.createStatement();
		rs=stmt.executeQuery("select * from svc_table order by id ASC");
		
		while(rs.next()) {
			int id=rs.getInt("id");
			if(id!=idx) {
				continue;
			}
			
			likes=rs.getInt("likes");
			break;
		}
		new_like=likes+1;
		con=DriverManager.getConnection(url,uid,upw);
		stmt=con.createStatement();
		StringBuilder sb = new StringBuilder();
		String sql = sb.append("UPDATE svc_table SET")
	             .append(" likes = "+ new_like)
	             .append(" WHERE id = ")
	             .append(idx)
	             .append(";").toString();
	  
    	 
    	 
         stmt.executeUpdate(sql);
         
	}catch (SQLException e) {
        
         e.printStackTrace();
     }
	return new_like;
	}
	
	
}