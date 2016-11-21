package com.sweet_cake.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sweet_cake.model.User;
import com.sweet_cake.repository.UsersRepository;

/**
 * @author Danijel
 *
 */
@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	private UsersRepository usersRepository;

	/* (non-Javadoc)
	 * @see com.sweet_cake.services.UsersService#getAllUsers()
	 */
	@Override
	@Transactional
	public List<User> getAllUsers() {
		return usersRepository.findAll();
	}

	@Override
	@Transactional
	public void save(User user) {
		usersRepository.save(user);
	}

	@Override
	@Transactional
	public User getUser(Integer id) {
		return usersRepository.findOne(id);
	}

	@Override
	@Transactional
	public void updateUser(User user) {
		usersRepository.updateUser(user.getId(), user.getFirstName());
	}

}
