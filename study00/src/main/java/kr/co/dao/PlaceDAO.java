package kr.co.dao;

import java.util.List;

import kr.co.vo.PlaceVO;

public interface PlaceDAO {
	
	// 코스에 여행지 조회
	public List<PlaceVO> readPlace(int cno) throws Exception;

	// 코스에 여행지 등록
	public void insertCourse(PlaceVO placeVO) throws Exception;

	// 코스에 여행지 수정
	public void updateCourse(PlaceVO placeVO) throws Exception;
	
	// 코스에 여행지 삭제
	public void deleteCourse(PlaceVO placeVO) throws Exception;
	
	// 코스에 여행지 1개 삭제
	public void deleteOneCourse(PlaceVO placeVO) throws Exception;
	
}
