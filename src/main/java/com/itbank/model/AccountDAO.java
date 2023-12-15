package com.itbank.model;

import com.itbank.model.vo.AccountVO;

public interface AccountDAO {

	AccountVO selectOne(AccountVO input);

}
