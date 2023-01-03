package com.sani.cubic.MySpringBoot02.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Hello {
	
	@ResponseBody
	@RequestMapping("/home")
	public String hi() {
		
		return "Welcome to Spring Boot";
	}
	@GetMapping("/test")
	public String home() {
		
		return "hello";
	}
	/*
	*
	*Created By Abdul Sani Khusravi On Jan 2, 2023  6:29:32 PM
	*/}
