package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.ReplyVO;

public interface ReplyDAO {
	List<ReplyVO> selectReplyAll(int board_idx);

	int insertReply(ReplyVO input);

	int countOne(int idx);

	List<ReplyVO> selectMyReplyAll(AccountVO user);
}
