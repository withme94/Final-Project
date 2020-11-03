package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.FavorDAO;
import kr.co.vo.FavorVO;

@Service
public class FavorServiceImpl implements FavorService {

	@Inject
	private FavorDAO dao;
	
	@Override
	public void insert(FavorVO favorVO) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(favorVO);
	}

	@Override
	public void delete(String keyNumber) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(keyNumber);
	}

	@Override
	public FavorVO select(String keyNumber) throws Exception {
		// TODO Auto-generated method stub
		return dao.select(keyNumber);
	}

	@Override
	public List<FavorVO> list(String userId) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(userId);
	}

}
