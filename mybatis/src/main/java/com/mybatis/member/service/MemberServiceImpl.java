package com.mybatis.member.service;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.common.template.Template;
import com.mybatis.member.dto.Member;
import com.mybatis.member.repository.MemberRepository; 

public class MemberServiceImpl implements MemberService {
	private MemberRepository mDao = new MemberRepository();
	SqlSession sqlSession = Template.getSqlSession();
	
	@Override
	public int checkId(String userId) {
		int checkId = mDao.checkId(sqlSession, userId);
		sqlSession.close();
		return checkId;
	}
	
	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(sqlSession, m);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public Member loginMember(Member m) {
		return null;
	}

	@Override
	public int updateMember(Member m) {
		return 0;
	}

	@Override
	public int deleteMember(String userId) {
		return 0;
	}
}
