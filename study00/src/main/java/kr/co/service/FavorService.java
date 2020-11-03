package kr.co.service;

import java.util.List;

import kr.co.vo.FavorVO;

public interface FavorService {

	// 즐겨찾기 등록
	public void insert(FavorVO favorVO) throws Exception;
	
	// 즐겨찾기 제거
	public void delete(String keyNumber) throws Exception;
	
	// 즐겨찾기 등록 확인
	public FavorVO select(String keyNumber) throws Exception;
	
	// 즐겨찾기 리스트
	public List<FavorVO> list(String userId) throws Exception;
}
