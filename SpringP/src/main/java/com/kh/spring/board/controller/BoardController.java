package com.kh.spring.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.member.model.vo.Member;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
		
	@RequestMapping("list.bo")
	public String selectList(Model model) {
		
	ArrayList<Board> list = boardService.selectList();	
	model.addAttribute("list", list);
	
	return "board/boardListView";
	
	}
		
	@RequestMapping("enrollForm.bo")
	public String enrollFrom() {
		
	return "board/boardWritingView";
	
	}

	@RequestMapping("insert.bo")
	public String insertBoard(@ModelAttribute Board b, HttpSession session) {


		System.out.println(b);

		boardService.insertBoard(b);
		session.setAttribute("msg", "작성완료");
		return "redirect:/";
	}

	@RequestMapping("boardDetaile.bo")
	public String writing(Model model, Board b) {
		
		Board board = boardService.boardDetail(b);	
		model.addAttribute("b", board);
		
		return "board/boardWriting";
	}
	//수정 페이지
	@RequestMapping("boardUpdateView.bo")
	public String boardUpdateView(Model model, Board b) {
		
		Board board = boardService.boardDetail(b);	
		
		model.addAttribute("b", board);
		
		return "board/boardPageView";
	}
	//수정
	@RequestMapping("boardUpdate.bo")
	public String uapdateBoard(Model model, Board b) {
		System.out.println(b);
		int result = boardService.updateBoard(b);
		
		ArrayList<Board> list = boardService.selectList();	
		model.addAttribute("list", list);
		
		
		return "board/boardListView";
	}
	
	//삭제
	@RequestMapping("deleteBoard.bo")
	public String deleteBoard(Model model, Board b) {
		int result = boardService.deleteBoard(b);
		
		ArrayList<Board> list = boardService.selectList();	
		model.addAttribute("list", list);
		
		
		return "board/boardListView";
	}
	
}
