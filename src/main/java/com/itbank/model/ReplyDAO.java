package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.ReplyVO;
import com.itbank.model.vo.Reply_ListVO;

public interface ReplyDAO {
	List<Reply_ListVO> selectReplyAll(int board_idx);

	int insertReply(ReplyVO input);

	int countOne(int idx);

	List<ReplyVO> selectMyReplyAll(AccountVO user);

	int updateReply(ReplyVO input);
}
