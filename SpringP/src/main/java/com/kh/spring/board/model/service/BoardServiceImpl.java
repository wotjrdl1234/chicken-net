package com.kh.spring.board.model.service;

import java.util.ArrayList;

import javax.activation.CommandMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.board.model.dao.BoardDao;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.common.exception.CommException;
import com.kh.spring.member.model.vo.Member;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public ArrayList<Board> selectList() {
		return boardDao.selectList(sqlSession);
	}
	
	@Override
	public void insertBoard(Board b) {
		
		int result = boardDao.insertBoard(sqlSession, b);

		if (result < 0) {
			throw new CommException("회원가입에 실패하였습니다");
		}
	}

	@Override
	public Board boardDetail(Board b) {
		return boardDao.boardDetail(sqlSession, b);
	}

	@Override
	public int updateBoard(Board b) {
		return boardDao.updateBoard(sqlSession, b);
	}

	@Override
	public int deleteBoard(Board b) {
		return boardDao.deleteBoard(sqlSession, b);
	}
	
}
