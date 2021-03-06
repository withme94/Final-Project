package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/search/*")
public class SearchController {

	@RequestMapping(value="/searchList", method = RequestMethod.GET)
	public String getSearchList() {
		
		return "search/searchList";
	}	
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/searchList", method = RequestMethod.POST)
	public String postSearchList() {
		
		return "search/searchList";
	}
}
