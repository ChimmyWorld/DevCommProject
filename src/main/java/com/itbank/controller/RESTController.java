package com.itbank.controller;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.vo.AccountVO;
import com.itbank.service.AccountService;

@RestController
public class RESTController {
	
	@Autowired private AccountService as;
	
	@GetMapping("/myPage/pwCheck")
	public String pwHash(String password) throws NoSuchAlgorithmException {
		return as.changeHash(password);
	}
	
	@GetMapping("/signUp/existId")
	public AccountVO existId(AccountVO input) {
		System.out.println(input.getUserid());
		
		AccountVO acc = as.existId(input);
		
		return acc;
	}
	
	@GetMapping("/signUp/existNick")
	public AccountVO existNick(AccountVO input) {
		System.out.println(input.getNick());
		
		AccountVO acc = as.existNick(input);
		
		return acc;
	}
	
	@GetMapping("/signUp/existEmail")
	public AccountVO existEmail(AccountVO input) {
		System.out.println(input.getEmail());
		
		AccountVO acc = as.existEmail(input);
		
		return acc;
	}
	
	@ExceptionHandler(NoSuchAlgorithmException.class)
	public String algoEx() {
		return "redirect:/";
	}
}
