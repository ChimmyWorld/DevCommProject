package com.itbank.controller;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLIntegrityConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/myPage")
public class MyPageController {
	
	@Autowired private AccountService as;

	@GetMapping("/info")
	public void info() {}
	
	@GetMapping("/settings")
	public void settings() {}
	
	@GetMapping("/pwChange")
	public void pwChange() {}
	
	@PostMapping("/pwChange")
	public String pwChange(Model model, AccountVO input, String newpw) throws NoSuchAlgorithmException {
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
	
	@ExceptionHandler(NoSuchAlgorithmException.class)
	public String algoEx() {
		return "redirect:/";
	}
	
}
