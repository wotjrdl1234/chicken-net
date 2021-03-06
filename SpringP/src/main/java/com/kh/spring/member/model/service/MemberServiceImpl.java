package com.kh.spring.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.spring.common.exception.CommException;
import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private MemberDao memberDao;

	@Override
	public Member loginMember(Member m) throws Exception {
		Member loginUser = memberDao.loginMember(sqlSession, m);

		if (loginUser == null) {
			throw new Exception("loginUser확인");
		}
		return loginUser;
	}

	@Override
	public void insertMember(Member m) {
		// TODO Auto-generated method stub
		int result = memberDao.insertMember(sqlSession, m);

		if (result < 0) {
			throw new CommException("회원가입에 실패하였습니다");
		}
	}

	@Override
	public Member loginMember(BCryptPasswordEncoder bCryptPasswordEncoder, Member m) {
		Member loginUser = memberDao.loginMember(sqlSession, m);
		
		System.out.println(m);
	    System.out.println(loginUser);
		
	    if (loginUser == null) {
			throw new CommException("loginUser 확인");
		}

		System.out.println(bCryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd()));
		if (!bCryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			throw new CommException("암호 불일치!");
		}
		return loginUser;
	}

	@Override
	public Member updateMember(Member m) throws Exception {
		int result = memberDao.updateMember(sqlSession, m);
		if (result > 0) {
			throw new Exception("회원수정에 실패하였습니다");
		} else {
			Member loginUser = memberDao.loginMember(sqlSession, m);
			return loginUser;
		}
	}

	@Override
	public void deleteMember(String userId) {
		int result = memberDao.deleteMember(sqlSession, userId);

		if (result < 0) {
			throw new CommException("회원탈퇴에 실패하였습니다");
		}
		
	}

	@Override
	public Member updatePwd(Member m) {
		int result = memberDao.updateMember(sqlSession, m);

		if (result < 0) {
			throw new CommException("비밀번호수정에 실패하였습니다");
		} else {
			Member loginUser = memberDao.loginMember(sqlSession, m);
			return loginUser;
		}
	}
	
	

}
