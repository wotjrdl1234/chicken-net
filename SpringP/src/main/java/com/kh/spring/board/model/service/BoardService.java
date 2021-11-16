package com.kh.spring.board.model.service;

import java.util.ArrayList;

import javax.activation.CommandMap;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.member.model.vo.Member;

public interface BoardService {

	ArrayList<Board> selectList();

	void insertBoard(Board b);
	
	Board boardDetail(Board board);

	int updateBoard(Board board);
	
	int deleteBoard(Board board);
	
}
