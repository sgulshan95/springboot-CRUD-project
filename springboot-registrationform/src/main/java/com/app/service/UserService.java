package com.app.service;

import java.util.List;

import com.app.entity.User;

public interface UserService {
	public void registerUser(User user);
	public void editregisterUser(Long id);
	public void deleteregisterUser(Long id);
	public List<User> getAllUser();
	public User getUserById(Long id);
	

}
