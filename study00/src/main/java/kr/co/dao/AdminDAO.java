package kr.co.dao;

import java.util.List;

import kr.co.vo.MemberVO;

public interface AdminDAO {

	public List<MemberVO> getList();
	
	public MemberVO read(String userId);
	
	public int delete(String userId);
	
	public int update(MemberVO member);
}
