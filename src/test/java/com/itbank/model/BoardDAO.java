package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.BoardVO;

public interface BoardDAO {
	
	@Select("select * from board " + 
			"order by idx desc " + 
			"offset 0 rows " + 
			"fetch first 5 rows only")
	List<BoardVO> selectFreePreview();

}
