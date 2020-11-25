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
import com.sbs.khr.gg.util.Util;

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

	@RequestMapping("/usr/article/modify")
	public String showModify(int id, Model model) {
		Article article = articleService.getForPrintArticle(id);

		model.addAttribute("article", article);

		return "/usr/article/modify";
	}
	
	@RequestMapping("/usr/article/doModify")
	public String doModify(@RequestParam Map<String, Object> param, Model model) {
		
		articleService.modify(param);
		model.addAttribute("msg", "단어장을 수정했습니다.");
		model.addAttribute("replaceUri", "../article/detail?id=" + Util.getAsInt(param.get("id")));
		
		return "common/redirect";
	}
}
