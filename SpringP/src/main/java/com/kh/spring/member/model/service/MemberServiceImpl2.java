package com.kh.spring.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.spring.common.exception.CommException;
import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;


@Service
public class MemberServiceImpl2 {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private MemberDao memberDao;

	public Member updateMember(Member m) throws Exception {
		int result = memberDao.updateMember(sqlSession, m);
		System.out.println(result);
		if (result < 0) {
			throw new Exception("회원수정에 실패하였습니다");			
		} else {
			Member loginUser = memberDao.loginMember(sqlSession, m);
			return loginUser;
		}
	}
}
