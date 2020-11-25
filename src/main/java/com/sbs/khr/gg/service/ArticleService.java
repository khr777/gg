package com.sbs.khr.gg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.khr.gg.dao.ArticleDao;
import com.sbs.khr.gg.dto.Article;
import com.sbs.khr.gg.util.Util;

@Service
public class ArticleService {
	
	@Autowired
	private ArticleDao articleDao;

	public int write(Map<String, Object> param) {
		
		int id = Util.getAsInt(param.get("id"));
		
		articleDao.write(param);
		
		
		return id;
	}

	public List<Article> getForPrintArticles() {
		return articleDao.getForPrintArticles();
	}

	public Article getForPrintArticle(int id) {
		return articleDao.getForPrintArticle(id);
	}

	public void modify(Map<String, Object> param) {
		articleDao.modify(param);
	}

}
