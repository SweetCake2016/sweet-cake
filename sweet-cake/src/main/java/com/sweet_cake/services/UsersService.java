package com.sweet_cake.services;

import java.util.List;

import com.sweet_cake.model.User;

/**
 * @author Danijel
 *
 */
public interface UsersService {

	List<User> getAllUsers();
	void save(User user);
}
