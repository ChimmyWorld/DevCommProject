package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.ReplyDAO;
import com.itbank.model.vo.ReplyVO;

@Service
public class ReplyService {
	@Autowired
	private ReplyDAO dao;
	
	public List<ReplyVO> getReplys(int board_idx){
		return dao.selectReplyAll(board_idx);
	}
	
	public int addReply(ReplyVO input) {
		return dao.insertReply(input);
	}
	
	public int countReply(int idx) {
		return dao.countOne(idx);
	}
}
