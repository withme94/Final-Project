package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/travelplace/*")
public class TravelplaceController {

	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/travelplaceMain", method = RequestMethod.GET)
	public void travelplaceMain() {
		
	}
	
	// 일단 get 방식으로 페이지 이동만 확인
	@RequestMapping(value="/travelplaceArea", method = RequestMethod.GET)
	public void travelplaceArea() {
		
	}
}
