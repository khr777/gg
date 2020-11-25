package com.sbs.khr.gg.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.khr.gg.dao.MemberDao;
import com.sbs.khr.gg.dto.Member;
import com.sbs.khr.gg.util.Util;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;

	public int join(Map<String, Object> param) {
		
		memberDao.join(param);
		
		int id = Util.getAsInt(param.get("id"));
		
		
		
		
		return id;
	}

	public Member getMemberById(int id) {
		return memberDao.getMemberById(id);
	}
	
}
