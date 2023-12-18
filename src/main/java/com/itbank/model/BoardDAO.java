package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	// 자유, 팁/정보, 스터디 게시판
	List<BoardVO> selectPreview(int idx);
	List<BoardVO> selectList(int type);
	BoardVO selectOne(int idx);
	int insert(BoardVO input);
	int delete(int idx);
	int update(BoardVO input);
	
	// QnA 게시판
	
}
