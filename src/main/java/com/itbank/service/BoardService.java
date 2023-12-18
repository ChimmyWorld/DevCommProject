package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.BoardDAO;
import com.itbank.model.vo.BoardVO;

@Service
public class BoardService {
	@Autowired
	private BoardDAO dao;
	
	public List<BoardVO> getPreview(int idx){
		return dao.selectPreview(idx);
	}
	
	public List<BoardVO> getList(int type){
		return dao.selectList(type);
	}
	
	public BoardVO getBoard(int idx) {
		return dao.selectOne(idx);
	}
	
	public int writeBoard(BoardVO input) {
		return dao.insert(input);
	}
	
	public int updateBoard(BoardVO input) {
		return dao.update(input);
	}
	
	public int deleteBoard(int idx) {
		return dao.delete(idx);
	}
	
}
