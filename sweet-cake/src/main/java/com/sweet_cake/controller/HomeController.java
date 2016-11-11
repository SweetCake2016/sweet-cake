package com.sweet_cake.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController 
{
	/**
	 * Request mapping for user
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getUsersView() {
		ModelAndView mv = new ModelAndView("welcome");
		return mv;
	}
}
