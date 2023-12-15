package com.itbank.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;

@Service
public class AccountService {

	@Autowired private AccountDAO dao;

	public String getVersion() {
		return dao.test();
	}

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

	public Map<String, Object> signUp(AccountVO input) {
		int row = dao.insert(input);
		String msg = "";
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(row == 0) {
			msg = "입력 정보를 다시 확인해 주세요";
		}
		else {
			msg = "환영합니다! " + input.getNick() + "님";
		}
		
		System.out.println(row);
		System.out.println(msg);
		
		map.put("row", row);
		map.put("msg", msg);
		
		return map;
	}

	public Map<String, Object> findID(String email) {
		AccountVO account = dao.findID(email);
		int row = 0;
		String msg = "";
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(account == null) {
			row = 0;
			msg = "해당 정보와 일치하는 ID가 존재하지 않습니다";
			map.put("row", row);
			map.put("msg", msg);
		}
		else {
			row = 1;
			msg = "회원님의 ID는 " + account.getUserid() + "입니다";
			map.put("row", row);
			map.put("msg", msg);
		}
		
		return map;
	}

	public Map<String, Object> findPW(AccountVO input) {
		AccountVO account = dao.findPW(input);
		int row = 0;
		String msg = "";
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(account == null) {
			row = 0;
			msg = "계정 정보가 존재하지 않습니다";
			map.put("row", row);
			map.put("msg", msg);
		}
		else {
			row = 1;
			msg = "회원님의 임시 비밀번호는 asdf입니다";
			map.put("row", row);
			map.put("msg", msg);
		}
		
		return map;
	}
	
}
