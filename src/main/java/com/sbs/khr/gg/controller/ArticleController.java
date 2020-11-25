package com.sbs.khr.gg.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ArticleController {
	
	@RequestMapping("/usr/article/write")
	public String showWrite() {
		return "/usr/article/write";
	}
	
	@RequestMapping("/usr/article/doWrite")
	public String doWrite(@RequestParam Map<String, Object> param, Model model) {
		
		System.out.println("param에 들어있는 것은?: " + param);
		
		
		
		return "";
	}
}
