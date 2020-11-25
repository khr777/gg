package com.sbs.khr.gg.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.khr.gg.dto.Article;
import com.sbs.khr.gg.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;

	@RequestMapping("/usr/article/write")
	public String showWrite() {
		return "/usr/article/write";
	}

	@RequestMapping("/usr/article/doWrite")
	public String doWrite(@RequestParam Map<String, Object> param, Model model) {
		System.out.println("param에 들어있는 것은?: " + param);
		
		int newArticleId = articleService.write(param);
		model.addAttribute("msg", "단어를 저장했습니다.");
		model.addAttribute("replaceUri", "../home/main");

		return "common/redirect";
	}
	
	@RequestMapping("/usr/article/list")
	public String showList(Model model) {
		
		List<Article> articles = articleService.getForPrintArticles();
		
		model.addAttribute("articles", articles);
		
		return "/usr/article/list";
	}
	
	
	@RequestMapping("/usr/article/detail")
	public String showDetail(int id, Model model) {
		Article article = articleService.getForPrintArticle(id);
		
		model.addAttribute("article", article);
		
		
		
		return "/usr/article/detail";
	}
}
