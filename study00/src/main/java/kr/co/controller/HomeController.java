package kr.co.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.CourseService;
import kr.co.service.FavorService;
import kr.co.vo.FavorVO;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	FavorService favorService;
	
	@Inject
	CourseService courseService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	// 디테일 창
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void getDetail(Model model , @ModelAttribute("scri") SearchCriteria scri) throws Exception{
	
		model.addAttribute("myList", courseService.myList(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(courseService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);	
	}
	
	// 즐겨찾기 등록, 삭제
	@RequestMapping(value = "/favorInsert", method = RequestMethod.POST)
	public String favorInsert(FavorVO favorVO, RedirectAttributes rttr, @RequestParam("userId") String writer, @RequestParam("contentId") String contentId) throws Exception{
		
		if(favorService.select(favorVO.getKeyNumber()) != null ) {
			favorService.delete(favorVO.getKeyNumber());
		} else {
			favorService.insert(favorVO);
			rttr.addFlashAttribute("contentId", favorVO.getContentId());
		}
		
		return "redirect:/detail?writer=" + writer + "&contentid=" + contentId;
	}
	
	// 코스디테일 창
	@RequestMapping(value = "/csDetail", method = RequestMethod.GET)
	public void getCsDetail(Model model , @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		
		model.addAttribute("myList", courseService.myList(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(courseService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
	}
	
	// 축제디테일 창
	@RequestMapping(value = "/fesDetail", method = RequestMethod.GET)
	public void getFesDetail(Model model , @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		
		model.addAttribute("myList", courseService.myList(scri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(courseService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
	}	
}
