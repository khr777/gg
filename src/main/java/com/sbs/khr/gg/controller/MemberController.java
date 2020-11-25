package com.sbs.khr.gg.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbs.khr.gg.dto.Member;
import com.sbs.khr.gg.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/login")
	public String showLogin() {
		return "/usr/member/login";
	}
	
	@RequestMapping("/usr/member/join")
	public String showJoin() {
		return "/usr/member/join";
	}
	
	@RequestMapping("/usr/member/doJoin")
	public String doJoin(@RequestParam Map<String, Object> param, Model model) {
		
		int newMemberId = memberService.join(param);
		System.out.println("id가 없나? " + newMemberId);
		Member member = memberService.getMemberById(newMemberId);
		
		model.addAttribute("msg", String.format("%s님, 많은 이용바랍니다.", member.getName()));
		model.addAttribute("replaceUri", "../member/login");
		
		return "common/redirect";
	}
			
}
