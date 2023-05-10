package com.app.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.entity.User;
import com.app.repository.UserRepo;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
    private UserRepo repo;
	
	
	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		
		repo.save(user);
		
	}
	
	
	@Override
	public void editregisterUser(Long id) {

		/*
		 * String name=user.getName(); User temp= repo.getReferenceById(name);
		 * temp.setFatherName(user.getFatherName()); temp.setAddress(user.getAddress());
		 * temp.setState(user.getState()); temp.setDistrict(user.getDistrict());
		 * temp.setPincode(user.getPincode()); temp.setEmail(user.getEmail());
		 * temp.setPhone(user.getPhone());
		 * 
		 * repo.save(temp);
		 */
	}
	
	
	@Override
	public void deleteregisterUser(Long id) {
		// TODO Auto-generated method stub
		
		repo.deleteById(id);

	}


	@Override
	public List<User> getAllUser() {
        List<User> userList = new ArrayList<>();
        repo.findAll().forEach(user -> userList.add(user));

        return userList;
    }


	@Override
	public User getUserById(Long id) {
		// TODO Auto-generated method stub
		return repo.findById(id).get();
	}
	
	
	

}
