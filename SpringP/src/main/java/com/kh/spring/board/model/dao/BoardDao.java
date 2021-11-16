package com.kh.spring.board.model.dao;

import java.util.ArrayList;

import javax.activation.CommandMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.member.model.vo.Member;

@Repository
public class BoardDao {
	
		
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList");
	}
	
	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}
	
	public Board boardDetail(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("boardMapper.selectBoard", b);
	}
	
	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.delete("boardMapper.deleteBoard", b);
	}

}
