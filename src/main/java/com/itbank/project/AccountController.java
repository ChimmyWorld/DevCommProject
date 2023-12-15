package com.itbank.project;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@Controller
public class AccountController {
	
	@Autowired private AccountService as;

	@GetMapping("/login")
	public String login() {
		return "acc/login";
	}
	
	@PostMapping("/login")
	public String login(HttpSession session, AccountVO input) {
		System.out.println(input.getUserid());
		System.out.println(input.getUserpw());
		
		as.login(input, session);
		
		return "redirect:/";
	}
	
}
