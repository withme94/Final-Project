package kr.co.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.vo.MemberVO;
import kr.co.service.AdminService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
@AllArgsConstructor
public class AdminController {

	private AdminService service;
	
	private BCryptPasswordEncoder pwdEncoder;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("userId") String userId, Model model) {
		log.info("get or modify");
		model.addAttribute("board", service.get(userId));
	}
	
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		log.info("modify: " + member);
		
		String inputPass = member.getUserPass();
		String pwd = pwdEncoder.encode(inputPass);
		member.setUserPass(pwd);
		service.modify(member);
		
		if(service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("userId") String userId, RedirectAttributes rttr) {
		log.info("remove : " + userId);
		if(service.remove(userId)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/list";
	}
	
	
	
}
