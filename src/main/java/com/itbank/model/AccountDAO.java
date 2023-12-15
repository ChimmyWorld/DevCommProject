package com.itbank.model;

import com.itbank.model.vo.AccountVO;

public interface AccountDAO {

	String test();

	AccountVO selectOne(AccountVO input);

	int insert(AccountVO input);

	AccountVO findID(String email);

	AccountVO findPW(AccountVO input);

}
