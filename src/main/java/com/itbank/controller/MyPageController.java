package com.itbank.controller;

import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;
import com.itbank.service.BoardService;
import com.itbank.service.ReplyService;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired private AccountService as;
	@Autowired private BoardService bs;
	@Autowired private ReplyService rs;

	@GetMapping("/info")
	public void info() {}
	
	@GetMapping("/articles")
	public ModelAndView articles(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		AccountVO user = (AccountVO) session.getAttribute("user");
		
		mav.addObject("myBoardList", bs.getMyBoardList(user));
		mav.addObject("myReplyList", rs.getMyReplys(user));
		
		return mav;
	}
	
	@GetMapping("/settings")
	public void settings() {}
	
	@GetMapping("/pwChange")
	public void pwChange() {}
	
	@PostMapping("/pwChange")
	public String pwChange(Model model, AccountVO input, String newpw) {
		System.out.println(input.getUserpw());
		System.out.println(newpw);
		
		model.addAttribute("map", as.updateUser(input, newpw));
		
		return "myPage/pwChangeSuccess";
	}
	
	@GetMapping("/withdraw")
	public void withdraw() {}
	
	@PostMapping("/withdraw")
	public String withdraw(AccountVO input) {
		System.out.println(input.getIdx());
		
		as.deleteUser(input);
		
		return "myPage/withdrawComplete";
	}
	
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public String ex() {
		System.out.println("SQL에 작성 실패");
		
		return "redirect:/";
	}
	
}
