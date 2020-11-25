package com.sbs.khr.gg.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.khr.gg.dto.Member;

@Mapper
public interface MemberDao {
	
	void join(Map<String, Object> param);

	Member getMemberById(@Param("id") int id);
	
}
