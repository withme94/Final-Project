package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;

public interface AdminService {

	public MemberVO get(String userId);
	
	public boolean modify(MemberVO member);
	
	public boolean remove(String userId);
	
	public List<MemberVO> getList();
}
