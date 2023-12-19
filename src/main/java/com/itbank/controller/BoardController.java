package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.ReplyVO;
import com.itbank.service.BoardService;
import com.itbank.service.ReplyService;

@Controller
public class BoardController {
	@Autowired private BoardService bs;
	@Autowired private ReplyService rs;
	
	// 자유 게시판
	@GetMapping("/free")
	public ModelAndView free() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("freeList", bs.getList(100));
		mav.setViewName("/board/free");
		return mav;
	}
	
	@GetMapping("/free/new")
	public String writeFree() {
		return "/board/newFree";
	}
	
	@PostMapping("/free/new")
	public String writeFree(BoardVO input) {
		bs.writeBoard(input);
		
		return "redirect:/";
	}
	
	// 정보/팁 게시판
	@GetMapping("/info")
	public ModelAndView info() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("infoList", bs.getList(200));
		mav.setViewName("/board/info");
		return mav;
	}
	
	@GetMapping("/info/new")
	public String writeInfo() {
		return "/board/newInfo";
	}
	
	@PostMapping("/info/new")
	public String writeInfo(BoardVO input) {
		bs.writeBoard(input);
		
		return "redirect:/";
	}
	
	//스터디 게시판
	@GetMapping("/study")
	public ModelAndView study() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("studyList", bs.getList(300));
		mav.setViewName("/board/study");
		return mav;
	}
	
	@GetMapping("/study/new")
	public String writeStudy() {
		return "/board/newStudy";
	}
	
	@PostMapping("/study/new")
	public String writeStudy(BoardVO input) {
		bs.writeBoard(input);
		
		return "redirect:/";
	}
	
	@GetMapping("/articles/{idx}")
	public ModelAndView view(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.getBoard(idx));
		mav.addObject("replys", rs.getReplys(idx));
		mav.addObject("reply", rs.countReply(idx));
		mav.setViewName("/board/articles");
		
		return mav;
	}
	
	@PostMapping("/articles/{idx}")
	public ModelAndView view(ReplyVO input) {
		ModelAndView mav = new ModelAndView("msg");
		
		mav.addObject("row", rs.addReply(input));
		mav.addObject("message", "작성완료");
		
		return mav;
	}
	
	
	@GetMapping("/articles/{idx}/edit")
	public ModelAndView update(@PathVariable int idx) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("row", bs.getBoard(idx));
		mav.setViewName("/board/update");
		
		return mav;
	}
	
	@PostMapping("/articles/{idx}/edit")
	public String update(BoardVO input) {
		bs.updateBoard(input);
		
		return "redirect:/";
	 
	}
	
	@GetMapping("/articles/{idx}/delete")
	public String delete(@PathVariable int idx) {
		bs.deleteBoard(idx);
		
		return "redirect:/";
	}
	
	//QnA 게시판
	@GetMapping("/qna")
	public ModelAndView qna() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("qnaList", bs.getList(400));
		mav.setViewName("/board/qna");
		return mav;
	}

	@GetMapping("/qna/new")
	public String writeQnA() {
		return "/board/newQna";
	}

	@PostMapping("/qna/new")
	public String writeQnA(BoardVO input) {
		bs.writeBoard(input);

		return "redirect:/";
	}

}
