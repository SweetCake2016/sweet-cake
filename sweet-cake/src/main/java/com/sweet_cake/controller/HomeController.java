package com.sweet_cake.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController 
{
	/**
	 * Request mapping for user
	 */
	@GetMapping(value = "/")
	public String getHomePage(Locale locale) {
		return "welcome";
	}
}
