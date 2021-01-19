package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemsDTO;
import com.walab.coding.Repository.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;
	
	public void regist(UserDTO ud) {
		
	}

	@Override
	public int registerUsergoal(GoalDTO g) {
		int result = userDAO.createUsergoal(g);
		return result;
	}

	@Override
	public int registerUserinfo(UserDTO u) {
		// TODO Auto-generated method stub
		int result = userDAO.createUserInfo(u);
		return result;
	}

	@Override
	public void createUserProblem(List<UserProblemsDTO> prob) {
		for(UserProblemsDTO p : prob) {
			userDAO.createUserProblem(p);
		}
	};
}
