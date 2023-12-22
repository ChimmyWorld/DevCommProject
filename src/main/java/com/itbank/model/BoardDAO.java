package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	// 게시판
	List<BoardVO> selectPreview(int idx);
	List<BoardVO> selectList(int type);
	BoardVO selectOne(int idx);
	int insert(BoardVO input);
	int delete(int idx);
	int update(BoardVO input);
	int countUp(int idx);
	String selectIdx();
	
	// 마이페이지
	List<BoardVO> selectMyBoardList(AccountVO user);

}
