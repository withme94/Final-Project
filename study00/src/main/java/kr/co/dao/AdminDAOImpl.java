package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> getList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("AdminMapper.getList");
	}

	@Override
	public MemberVO read(String userId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("AdminMapper.read", userId);
	}

	@Override
	public int delete(String userId) {
		// TODO Auto-generated method stub
		return sqlSession.delete("AdminMapper.delete", userId);
	}

	@Override
	public int update(MemberVO member) {
		// TODO Auto-generated method stub
		return sqlSession.update("AdminMapper.update", member);
	}

}
