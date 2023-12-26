package com.itbank.model;

import java.util.List;
import java.util.Map;

import com.itbank.components.Paging;
import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	// 게시판
	List<BoardVO> selectPreview(int idx);
	List<BoardVO> selectList(Paging p);
	BoardVO selectOne(int idx);
	int insert(BoardVO input);
	int delete(int idx);
	int update(BoardVO input);
	int countUp(int idx);
	int selectIdx();
	Integer totalBoard(Integer type);
	
	// 마이페이지
	List<BoardVO> selectMyBoardList(Map<String, Object> param);
	Integer totalMyBoard(AccountVO user);

}
