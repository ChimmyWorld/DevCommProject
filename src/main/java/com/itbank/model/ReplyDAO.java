package com.itbank.model;

import java.util.List;
import java.util.Map;

import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.ReplyVO;

public interface ReplyDAO {
	List<ReplyVO> selectReplyAll(int board_idx);

	int insertReply(ReplyVO input);
	
	int deleteReply(int idx);

	int countOne(int idx);

	List<BoardVO> selectMyReplyList(Map<String, Object> param);

	ReplyVO selectBoardIdx(int idx);

	String selectType(int idx);

	int totalMyReply(AccountVO user);
	
}
