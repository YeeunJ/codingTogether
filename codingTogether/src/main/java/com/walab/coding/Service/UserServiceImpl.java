package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.UserDTO;
import com.walab.coding.Repository.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDAO userService;
	
	public List<UserDTO> readUser(int userID){
		List<UserDTO> users = userService.readUserAll(userID);
		return users;
	}

}
