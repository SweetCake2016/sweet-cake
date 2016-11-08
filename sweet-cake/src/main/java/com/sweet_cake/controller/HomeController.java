package com.sweet_cake.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sweet_cake.model.User;

@Controller
public class HomeController 
{
	/**
	 * Request mapping for user
	 */
	@RequestMapping(value = "users", method = RequestMethod.GET)
	public ModelAndView getUsersView() {
		List<User> users = new ArrayList<User>();
		User userIvan = new User();
		userIvan.setId(1L);
		userIvan.setFirstName("Ivan");
		userIvan.setFamilyName("Milosavljevic");
		userIvan.setEmail("test@test.com");
		users.add(userIvan);
		ModelAndView mv = new ModelAndView("users");
		mv.addObject("usersModel", users);
		return mv;
	}
}
