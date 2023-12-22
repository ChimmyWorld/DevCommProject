package com.itbank.service;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.components.SHA512;
import com.itbank.model.AccountDAO;
import com.itbank.model.vo.AccountVO;

@Service
public class AccountService {

	@Autowired private AccountDAO dao;
	@Autowired private SHA512 hash;

	public String getVersion() {
		return dao.test();
	}

	public AccountVO login(AccountVO input, String saveId, 
			HttpSession session, HttpServletResponse response) {
		AccountVO account = dao.selectOne(input);
		
		if(account == null) {
			System.out.println("0");
		}
		else {
			System.out.println("1");
			session.setAttribute("user", account);
			
			createCookie(response, saveId, "userid", account.getUserid());
		}
		
		return account;
	}

	private void createCookie(HttpServletResponse response, 
			String saveId, String name, String userid) {
		Cookie cookie = new Cookie(name, userid);
		cookie.setMaxAge(0);
		
		if (saveId != null) {
			cookie.setMaxAge(7 * 24 * 60 * 60);
		}
		
        response.addCookie(cookie);
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

	public Map<String, Object> findPW(AccountVO input) throws NoSuchAlgorithmException {
		AccountVO account = dao.findPW(input);
		int row = 0;
		String msg = "";
		String newPW = "";
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(account == null) {
			row = 0;
			msg = "계정 정보가 존재하지 않습니다";
			map.put("row", row);
			map.put("msg", msg);
		}
		else {
			row = 1;
			newPW = RandomStringUtils.randomAlphanumeric(6);
			msg = "회원님의 임시 비밀번호는 " + newPW + "입니다";
			map.put("row", row);
			map.put("msg", msg);
			
			account.setUserpw(hash.getHash(newPW));
			row = dao.updatePW(account);
		}
		
		return map;
	}

	public void deleteUser(AccountVO input) {
		int row = dao.delete(input);
		
		if(row == 1) {
			System.out.println(input.getIdx() + " 탈퇴 완료");
		}
		else {
			System.out.println(input.getIdx() + " 탈퇴 실패. session 다시 확인");
		}
		
	}

	public Map<String, Object> updateUser(AccountVO input, String newpw) throws NoSuchAlgorithmException {
		input.setUserpw(hash.getHash(newpw));
		
		Map<String, Object> map = new HashMap<String, Object>();
		int row = 0;
		String msg = "";
		
		row = dao.updatePW(input);
		
		if(row == 1) {
			msg = "패스워드 변경 완료";
			map.put("row", row);
			map.put("msg", msg);
		}
		else {
			msg = "패스워드 변경 실패. SQL이나 Data 재확인";
			map.put("row", row);
			map.put("msg", msg);
		}
		
		return map;
	}

	public String changeHash(String password) throws NoSuchAlgorithmException {
		return hash.getHash(password);
	}

	public AccountVO existId(AccountVO input) {
		AccountVO acc = new AccountVO();
		
		acc = dao.searchId(input);
		
		if(acc == null) {
			acc = new AccountVO();
		}
		
		return acc;
	}

	public AccountVO existNick(AccountVO input) {
		AccountVO acc = new AccountVO();
		
		acc = dao.searchNick(input);
		
		if(acc == null) {
			acc = new AccountVO();
		}
		
		return acc;
	}

	public AccountVO existEmail(AccountVO input) {
		AccountVO acc = new AccountVO();
		
		acc = dao.searchEmail(input);
		
		if(acc == null) {
			acc = new AccountVO();
		}
		
		return acc;
	}
	
}
