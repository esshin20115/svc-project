package com.example.demo;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;


@RestController
public class svcRestController {
	@GetMapping("/pluslike")
	public int plusLike(int id) {
	DAO tableDAO=new DAO();
	int like=tableDAO.update_likes(id);
	return like; 
	}
	
	@RequestMapping(value="/reply",method=RequestMethod.POST)
	public int reply(String nickname, String content,int id) {
	//DAO_comment tableDAO_comment=new DAO_comment();
	//System.out.println("nickname"+nickname+"content"+content+"id"+id);
	DAO_comment tableDAO_comment=new DAO_comment();
	ArrayList<DTO_comment> dtos=tableDAO_comment.memberSelect(id);
	dtos=tableDAO_comment.Add_comment(id,nickname,content);
	System.out.println(dtos);
	return 2;
	}
	
	
	
	//
}
