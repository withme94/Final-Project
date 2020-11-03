package kr.co.service;

import java.util.List;

import kr.co.vo.CourseVO;
import kr.co.vo.PlaceVO;
import kr.co.vo.SearchCriteria;

public interface CourseService {

	// 코스 작성
	public void write(CourseVO courseVO) throws Exception;

	// 코스 목록 조회
	public List<CourseVO> list(SearchCriteria scri) throws Exception;
	
	// 개인 코스 목록 조회
	public List<CourseVO> myList(SearchCriteria scri) throws Exception;
	
	// 게시물(코스) 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 내 게시물(코스) 총 갯수
	public int myListCount(SearchCriteria scri) throws Exception;
	
	// 코스 내용 조회
	public CourseVO read(int cno) throws Exception;
	
	// 코스 내용 수정
	public void update(CourseVO courseVO) throws Exception;

	// 코스에 코스 저장
	public void cosResgister(CourseVO courseVO, List<PlaceVO> list) throws Exception;
	
	// 코스 삭제
	public void delete(int cno) throws Exception;
}
