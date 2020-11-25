package com.sbs.khr.gg.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.khr.gg.dto.Article;

@Mapper
public interface ArticleDao {

	void write(Map<String, Object> param);

	List<Article> getForPrintArticles();

	Article getForPrintArticle(@Param("id") int id);

}
