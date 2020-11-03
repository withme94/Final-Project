package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.AdminDAO;
import kr.co.vo.MemberVO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;
	
	@Override
	public MemberVO get(String userId) {
		log.info("get....." + userId);
		return dao.read(userId);
	}

	@Override
	public boolean modify(MemberVO member) {
		log.info("modify...." + member);
		return dao.update(member) == 1;
	}

	@Override
	public boolean remove(String userId) {
		log.info("remove" + userId);
		return dao.delete(userId) == 1;
	}

	@Override
	public List<MemberVO> getList() {
		log.info("get list..");
		return dao.getList();
	}

}
