package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.entity.LoginObject;
import com.example.entity.User;
import com.example.repository.UserRepository;
@Service
public class UserServiceImpl {
	@Autowired
	private UserRepository userRepository;
	
	public void savaUser(User user)
	{
		userRepository.save(user);
	}
	public boolean verifyPassworAndName(LoginObject user)
	{
		String name=userRepository.getNameByNameAndPassword(user.getName(),user.getPassword());
		if(name!=null&&name.equals(user.getName()))
		{
			return true;
		}
		else {
			return false;
		}
	}

	public List<User> getAllUser()
	{
		return userRepository.findAll();
	}
}
