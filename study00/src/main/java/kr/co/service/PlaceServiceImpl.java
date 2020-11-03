package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.PlaceDAO;
import kr.co.vo.PlaceVO;

@Service
public class PlaceServiceImpl implements PlaceService {

	@Inject
	private PlaceDAO dao;
	
	// 코스에 여행지 조회
	@Override
	public List<PlaceVO> readPlace(int cno) throws Exception {
		// TODO Auto-generated method stub
		return dao.readPlace(cno);
	}

	// 코스에 여행지 등록
	@Override
	public void insertCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		dao.insertCourse(placeVO);
	}
	
	// 코스에 여행지 수정
	@Override
	public void updateCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		dao.updateCourse(placeVO);
	}
	
	// 코스에 여행지 삭제
	@Override
	public void deleteCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteCourse(placeVO);
	}
	
	// 코스에 여행지 1개 삭제
	@Override
	public void deleteOneCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteOneCourse(placeVO);
	}

}
