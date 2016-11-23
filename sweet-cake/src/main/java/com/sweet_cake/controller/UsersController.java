package com.sweet_cake.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		return "users/new_user_form";
	}
	
	@PostMapping(value = "/saveUser")
	public String saveUser(@ModelAttribute("user") User user) {
		
		usersService.save(user);
		
		return "redirect:/users/list";
	}
	
	@GetMapping(value = "/showFormForUpdate")
	public String showFormForUpdate(Model model, @RequestParam("userId") Integer userId) {
		User user = usersService.getUser(userId);
		
		model.addAttribute("user", user);
		return "users/edit_form";
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") User user) {
	
		User userFromDB = usersService.getUser(user.getId());
		if (!userFromDB.equals(user)) {
			usersService.updateUser(user);
		}
		
		return "redirect:/users/list";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") Integer userId) {
		
		User user = usersService.getUser(userId);
		usersService.delete(user);
		
		return "redirect:/users/list";
	}
}
