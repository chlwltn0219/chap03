package com.hybrid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hybrid.domain.MemberInfo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	static Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/registForm")
	public String registform() {
		log.info("###############");
		log.info("registForm()...");
		log.info("###############");
		
		return "registForm";
		
	}
	
	@RequestMapping("/regist")
	public String regist(MemberInfo memberInfo) {
		log.info("###############");
		log.info("regist()...");
		log.info("###############");
		log.info("id = " + memberInfo.getId());
		log.info("name = " + memberInfo.getName());
		log.info("email = " + memberInfo.getEmail());
		
		return "regist";
		
	}

}
