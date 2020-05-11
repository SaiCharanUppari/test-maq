package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.User;
import com.mindtree.testdevopsmaq.repository.UserRepository;
import com.mindtree.testdevopsmaq.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepo;

	@Override
	public User addUser(User user) {

		User added = userRepo.save(user);

		return added;
	}

}
