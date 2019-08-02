package com.example.demo;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class hellocontroller{
	
	@RequestMapping("/main")
	public ModelAndView index( Model model,ModelMap modelmap) {
		DAO tableDAO=new DAO();
		ArrayList<DTO> dtos=tableDAO.memberSelect();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("svcInfoList", dtos);
		return mav;
	}
	
	@GetMapping("/detail")
	public ModelAndView sayHello(int id) {
		DAO tableDAO=new DAO();
		DTO dto=tableDAO.memberSelect_detail(id);
		ModelAndView mav= new ModelAndView("detail");
		mav.addObject("svcInfo",dto);

		DAO_comment tableDAO_comment=new DAO_comment();
		ArrayList<DTO_comment> dtos=tableDAO_comment.memberSelect(id);
		//ModelAndView mav_comment= new ModelAndView("detail");
		mav.addObject("svcComment",dtos);
		return mav;
	}
	 
//	@GetMapping("/test")
//	public ModelAndView sayHello2(int id) {
//		DAO tableDAO=new DAO();
//		DTO dto=tableDAO.memberSelect_detail(id);
//		//return dto;
//		ModelAndView mav= new ModelAndView("detail2");
//		mav.addObject("svcInfo",dto);
//		return mav;
//	}
}