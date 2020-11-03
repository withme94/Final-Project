package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.dao.CourseDAO;
import kr.co.dao.PlaceDAO;
import kr.co.vo.CourseVO;
import kr.co.vo.PlaceVO;
import kr.co.vo.SearchCriteria;

@Service
public class CourseServiceImpl implements CourseService {

	@Inject
	private CourseDAO dao;
	
	@Inject
	private PlaceDAO pdao;	

	// 코스 작성
	@Override
	public void write(CourseVO courseVO) throws Exception {
		// TODO Auto-generated method stub
		dao.write(courseVO);
	}

	// 코스 목록 조회
	@Override
	public List<CourseVO> list(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(scri);
	}

	// 개인 코스 목록 조회
	@Override
	public List<CourseVO> myList(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return dao.myList(scri);
	}

	// 게시물(코스) 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCount(scri);
	}
	
	// 내 게시물(코스) 총 갯수
	@Override
	public int myListCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return dao.myListCount(scri);
	}
	
	// 코스 내용 조회
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public CourseVO read(int cno) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.read(cno);
	}

	// 코스 내용 수정
	@Override
	public void update(CourseVO courseVO) throws Exception {
		// TODO Auto-generated method stub
		dao.update(courseVO);
	}

	// 코스에 코스 저장
	@Override
	public void cosResgister(CourseVO courseVO, List<PlaceVO> list) throws Exception {
		// TODO Auto-generated method stub
		for(PlaceVO pl :list) {
			pdao.insertCourse(pl);
			
		}
	}

	// 코스 삭제
	@Override
	public void delete(int cno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(cno);
	}




}
