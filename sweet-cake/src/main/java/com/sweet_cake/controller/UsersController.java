package com.sweet_cake.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sweet_cake.model.User;
import com.sweet_cake.services.UsersService;

/**
 * @author Danijel
 *
 */
@Controller
@RequestMapping(value = "/users")
public class UsersController {
	
	@Autowired
	private UsersService usersService;

	@GetMapping(value = "/list")
	public String getUsers(Model model) {
		List<User> users =  usersService.getAllUsers();
		
		model.addAttribute("users", users);
		
		return "users/users";
	}
	
	@GetMapping(value = "/showFormForAdd")
	public String showFormForAdd(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		
		return "users/new_user";
	}
	
	@PostMapping(value = "/saveUser")
	public String saveUser(@ModelAttribute("user") User user) {
		
		usersService.save(user);
		
		return "redirect:/users/list";
	}
}
