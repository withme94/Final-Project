package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.CourseVO;
import kr.co.vo.SearchCriteria;

@Repository
public class CourseDAOImpl implements CourseDAO {

	@Inject
	private SqlSession sql;

	// 코스 작성
	@Override
	public void write(CourseVO courseVO) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("courseMapper.insert", courseVO);
	}

	// 코스 목록 조회
	@Override
	public List<CourseVO> list(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList("courseMapper.listPage", scri);
	}

	// 개인 코스 목록 조회
	@Override
	public List<CourseVO> myList(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList("courseMapper.listMyPage", scri);
	}
	
	// 게시물(코스) 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("courseMapper.listCount", scri);
	}
	// 내 게시물(코스) 총 갯수
	@Override
	public int myListCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("courseMapper.myListCount", scri);
	}
	
	// 코스 내용 조회
	@Override
	public CourseVO read(int cno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("courseMapper.read", cno);
	}

	// 코스 내용 수정
	@Override
	public void update(CourseVO courseVO) throws Exception {
		// TODO Auto-generated method stub
		sql.update("courseMapper.update", courseVO);
	}

	// 코스 삭제
	@Override
	public void delete(int cno) throws Exception {
		// TODO Auto-generated method stub
		sql.delete("courseMapper.delete", cno);
	}


}
