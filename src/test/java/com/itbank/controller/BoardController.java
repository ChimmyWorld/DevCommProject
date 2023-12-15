package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService bs;
	
	@GetMapping("/free")
	public ModelAndView free() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("freeList", bs.getFreeList());
		mav.setViewName("/board/free");
		return mav;
	}


}
