package com.walab.coding.Service;

import java.util.Date;
import java.util.List;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemsDTO;

public interface UserService {

	List<UserDTO> readUser(int userID);
	public void regist(UserDTO ud);
	
	int registerUserinfo(UserDTO u);
	
	int registerUsergoal(GoalDTO g);
	
	void createUserProblem(List<UserProblemsDTO> p);

}
