package com.mindtree.testdevopsmaq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.User;
import com.mindtree.testdevopsmaq.repository.UserRepository;
import com.mindtree.testdevopsmaq.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepo;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
	}

	@Override
	public User addUser(User user) {

		User added = userRepo.save(user);

		return added;
	}

	@Override
	public void addNewUser(User newUser) {
		User user = new User();
		user.setUsername(newUser.getUsername());
		user.setPassword(passwordEncoder.encode(newUser.getPassword()));
		user.setRole(newUser.getRole());
		;
		userRepo.save(user);
	}

	@Override
	public void deleteUser(String username) {
		User user = userRepo.findByUsername(username);
		userRepo.delete(user);

	}

	@Override
	public List<User> getAccounts() {
		List<User> users = userRepo.findAll();

		return users;
	}

	@Override
	public List<User> getClientAccounts() {
		String role = "client";
		List<User> accounts = userRepo.findByRole(role);
		return accounts;
	}

}
