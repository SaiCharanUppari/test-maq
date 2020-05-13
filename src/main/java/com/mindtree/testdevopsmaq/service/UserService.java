package com.mindtree.testdevopsmaq.service;

import java.util.List;

import com.mindtree.testdevopsmaq.exception.WrongPasswordException;
import com.mindtree.testdevopsmaq.model.User;

public interface UserService {

	User addUser(User user);

	void addNewUser(User newUser);

	void deleteUser(String username);

	List<User> getAccounts();

	List<User> getClientAccounts();
	
	void changePassword(String username,String oldPassword, String password) throws WrongPasswordException;


}
