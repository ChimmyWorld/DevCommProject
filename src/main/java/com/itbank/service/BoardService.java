package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.components.Paging;
import com.itbank.model.BoardDAO;
import com.itbank.model.vo.AccountVO;
import com.itbank.model.vo.BoardVO;

@Service
public class BoardService {
	@Autowired private BoardDAO dao;
	@Value("file:C:/img_folder/board") private Resource dir;

	// 게시판 CRUD
	public List<BoardVO> getPreview(int idx) {
		return dao.selectPreview(idx);
	}

	public Map<String, Object> getList(Integer idx, Integer type, String order, String keyword, String search) {
		idx = idx == null ? 1 : idx;
		
		System.out.println(dao.totalBoard(type));
		
		// 페이징 코드
		Paging p = new Paging(idx, dao.totalBoard(type), type, order, keyword, search);
		System.out.println(order);
		List<BoardVO> list = dao.selectList(p);
		
		Map<String, Object> result = new HashMap<>();
		
		result.put("p", p);
		result.put("list", list);
		
		return result;
	}

	public BoardVO getBoard(int idx) {
		return dao.selectOne(idx);
	}

	public int writeBoard(BoardVO input) throws IOException {
		MultipartFile file = input.getUpload();
		
		// 파일이 업로드되었을 때만 아래 로직을 수행
		if (file != null && !file.isEmpty()) {
	        
			// 1. DB에 저장할 파일 이름 저장
	        input.setArticle_img(file.getOriginalFilename());
	        
	        // 2. insert 후 작성된 글 번호 (idx) 가져오기
	        int row = dao.insert(input);
	        String idx = dao.selectIdx();
	        
	        // 3. 해당 번호의 폴더 생성
	        File newDir = new File(dir.getFile(), idx);
	        newDir.mkdir();
	        
	        // 4. 3번의 폴더에 이미지를 업로드
	        File dst = new File(newDir, file.getOriginalFilename());
	        file.transferTo(dst);

	        return row;
	    } else {
	    	// 파일이 업로드되지 않았을 때의 로직 (폴더를 생성하지 않음)
	        int row = dao.insert(input);
	        return row;
	    }
	}

	public int updateBoard(BoardVO input) {
		return dao.update(input);
	}

	public int deleteBoard(int idx) {
		return dao.delete(idx);
	}

	public int updateViewCount(int idx) {
		return dao.countUp(idx);
	}

	// 마이페이지 기능
	public List<BoardVO> getMyBoardList(AccountVO user) {
		return dao.selectMyBoardList(user);
	}

}
