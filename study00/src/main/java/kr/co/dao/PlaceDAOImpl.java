package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.PlaceVO;

@Repository
public class PlaceDAOImpl implements PlaceDAO {

	@Inject SqlSession sql;
	
	// 코스 조회
	@Override
	public List<PlaceVO> readPlace(int cno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList("placeMapper.readPlace", cno);
	}

	// 코스 등록
	@Override
	public void insertCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("placeMapper.insertCourse", placeVO);
	}
	// 코스에 여행지 수정
	@Override
	public void updateCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		sql.update("placeMapper.updateCourse", placeVO);
	}
	// 코스에 여행지 삭제
	@Override
	public void deleteCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		sql.update("placeMapper.deleteCourse", placeVO);
	}
	// 코스에 여행지 1개 삭제
	@Override
	public void deleteOneCourse(PlaceVO placeVO) throws Exception {
		// TODO Auto-generated method stub
		sql.update("placeMapper.deleteOneCourse", placeVO);
	}

}
