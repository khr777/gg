package com.sbs.khr.gg.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int id;
	private String loginId;
	private String loginPw;
	private String regDate;
	private String updateDate;
	private String name;
	private String nickname;
	private String email;
}
