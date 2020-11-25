package com.sbs.khr.gg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@RequestMapping("/usr/member/login")
	public String showLogin() {
		return "/usr/member/login";
	}
	
	@RequestMapping("/usr/member/join")
	public String showJoin() {
		return "/usr/member/join";
	}
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public String doJoin() {
		return "djdjdj";
	}
			
}
