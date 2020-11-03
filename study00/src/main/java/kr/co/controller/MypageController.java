package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.service.CourseService;
import kr.co.service.FavorService;
import kr.co.service.PlaceService;
import kr.co.service.ReplyService;
import kr.co.vo.CourseVO;
import kr.co.vo.FavorVO;
import kr.co.vo.MemberVO;
import kr.co.vo.PageMaker;
import kr.co.vo.PlaceVO;
import kr.co.vo.ReplyVO;
import kr.co.vo.SearchCriteria;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value="/mypage/*")
public class MypageController {
	

	@Inject
	FavorService favorService;
	
	@Inject
	ReplyService replyService;
	
	@Inject
	CourseService courseService;
	
	@Inject
	PlaceService placeService;
	
	// 내가 저장한 코스 보기
	@RequestMapping(value="/mypageCourse", method = RequestMethod.GET)
	public void mypageCourse(Model model , @ModelAttribute("scri") SearchCriteria scri, MemberVO memberVO) throws Exception {
		model.addAttribute("myList", courseService.myList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(courseService.myListCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);		
	}

	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageFavor", method = RequestMethod.GET)
	public void mypageFavor(FavorVO favorVO, Model model) throws Exception {
		
		List<FavorVO> favorList = favorService.list(favorVO.getUserId());
		model.addAttribute("favorList", favorList);
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageInfo", method = RequestMethod.GET)
	public void mypageInfo() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageMain", method = RequestMethod.GET)
	public void mypageMain() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageQA", method = RequestMethod.GET)
	public void mypageQA() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageReply", method = RequestMethod.GET)
	public void mypageReply(ReplyVO replyVO, Model model) throws Exception {
	
		List<ReplyVO> myReply = replyService.myReply(replyVO.getWriter());
		model.addAttribute("myReply", myReply);
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageStemp", method = RequestMethod.GET)
	public void mypageStemp() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/mypageWeek", method = RequestMethod.GET)
	public void mypageWeek() {
		
	}
	
	// 코스 내용 조회 (마이페이지)	
	@RequestMapping(value="/mypageCourseUpdate", method = RequestMethod.GET)
	public void mypageCourseUpdate(CourseVO courseVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		
		model.addAttribute("read", courseService.read(courseVO.getCno()));
		model.addAttribute("scri", scri);
		
		List<PlaceVO> placeList = placeService.readPlace(courseVO.getCno());
		model.addAttribute("placeList", placeList);
	}
	
	// 코스 내용 수정
	@RequestMapping(value="/myCourseUpdate", method = RequestMethod.POST)
	public String myCourseUpdate(CourseVO courseVO, Model model, MemberVO memberVO, PlaceVO placeVO, @RequestParam("writer") String writer) throws Exception {
		
		
		courseService.update(courseVO);
		List<PlaceVO> list = placeVO.getPlaceList();
		placeService.deleteCourse(placeVO);
		courseService.cosResgister(courseVO, list);
		
		model.addAttribute("writer", memberVO.getUserId());
		
		return "redirect:/mypage/mypageCourse?writer=" + writer;
	}
}
