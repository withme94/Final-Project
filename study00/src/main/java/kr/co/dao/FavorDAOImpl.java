package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.FavorVO;

@Repository
public class FavorDAOImpl implements FavorDAO {

	@Inject
	private SqlSession sql;
	
	@Override
	public void insert(FavorVO favorVO) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("favorMapper.insert", favorVO);
	}

	@Override
	public void delete(String keyNumber) throws Exception {
		// TODO Auto-generated method stub
		sql.delete("favorMapper.delete", keyNumber);
	}

	@Override
	public FavorVO select(String keyNumber) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("favorMapper.select", keyNumber);
	}

	@Override
	public List<FavorVO> list(String userId) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList("favorMapper.selectList", userId);
	}

}
