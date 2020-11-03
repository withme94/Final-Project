package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/event/*")
public class EventController {
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/eventMain", method = RequestMethod.GET)
	public void eventMain() {
		
	}
}
