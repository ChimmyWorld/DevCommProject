package com.itbank.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;

@Service
public class AccountService {
	
	@Autowired private AccountDAO dao;

	public AccountVO login(AccountVO input, HttpSession session) {
		AccountVO account = dao.selectOne(input);
		
		if(account == null) {
			System.out.println("0");
		}
		else {
			System.out.println("1");
			session.setAttribute("user", account);
		}
		
		return account;
	}

}
