package com.sweet_cake.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController 
{
	/**
	 * Request mapping for user
	 */
	@GetMapping(value = "/")
	public String getUsersView() {
		return "welcome";
	}
}
