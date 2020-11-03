package kr.co.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.CourseService;
import kr.co.service.PlaceService;
import kr.co.vo.BoardVO;
import kr.co.vo.CourseVO;
import kr.co.vo.PageMaker;
import kr.co.vo.PlaceVO;
import kr.co.vo.SearchCriteria;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value="/course/*")
public class CourseController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	CourseService courseService;
	
	@Inject
	PlaceService placeService;
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/courseMain", method = RequestMethod.GET)
	public void courseMain() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/courseArea", method = RequestMethod.GET)
	public void courseArea() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/courseUser", method = RequestMethod.GET)
	public void courseUser(Model model , @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		
		model.addAttribute("list", courseService.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(courseService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
	
	// 코스 작성
	@RequestMapping(value = "/csWrite", method = RequestMethod.POST)
	public String csWrite(CourseVO courseVO, @RequestParam("writer") String writer) throws Exception {
		logger.info("write");
		courseService.write(courseVO);
		
		return "redirect:/mypage/mypageCourse?writer=" + writer;
	}
	
	// 코스 내용 조회
	@RequestMapping(value="/courseUserDetail", method = RequestMethod.GET)
	public void courseUserDetail(CourseVO courseVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		
		model.addAttribute("myList", courseService.myList(scri));
		model.addAttribute("read", courseService.read(courseVO.getCno()));
		model.addAttribute("scri", scri);
		
		List<PlaceVO> placeList = placeService.readPlace(courseVO.getCno());
		model.addAttribute("placeList", placeList);
		
	}
	
	// 코스 등록
	@RequestMapping(value="/insertCourse", method = RequestMethod.POST)
	public String insertCourse(PlaceVO placeVO) throws Exception{
		placeService.insertCourse(placeVO);
		
		return "redirect:/";
	}

	// 코스 등록
	@RequestMapping(value="/insertCCourse", method = RequestMethod.POST)
	public String insertCCourse(CourseVO courseVO, PlaceVO placeVO) throws Exception{
		// placeService.insertCourse(placeVO);
		
		List<PlaceVO> list = placeVO.getPlaceList();
		courseService.cosResgister(courseVO, list);

		return "redirect:/";
	}
	
	// 코스 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(CourseVO courseVO, @RequestParam("writer") String writer) throws Exception{
		
		courseService.delete(courseVO.getCno());
		
		return "redirect:/mypage/mypageCourse?writer=" + writer;
	}
	
	// 코스에 여행지 1개 삭제 (안됨)
	@RequestMapping(value = "/deletePlace", method = RequestMethod.GET)
	public String deletePlace(PlaceVO placeVO, RedirectAttributes rttr, HttpSession session) throws Exception{
		
		placeService.deleteCourse(placeVO);
		session.getAttribute("userId");
		return "redirect:/mypage/mypageCourse?writer"+session.getAttribute("userId");
	}
	//코스 메인페이지에서 코스 등록
	@RequestMapping(value = "/csWriteMain", method = RequestMethod.POST)
	public String csWriteMain(CourseVO courseVO, @RequestParam("writer") String writer) throws Exception {
		logger.info("write");
		courseService.write(courseVO);
		
		return "redirect:/course/courseUser";
	}
	

	
	
}
