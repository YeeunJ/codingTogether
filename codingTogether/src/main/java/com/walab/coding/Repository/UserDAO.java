package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemsDTO;

public interface UserDAO {
	
	public int createUserInfo(UserDTO u);
	public int createUsergoal(GoalDTO g);
	public void createUserProblem(UserProblemsDTO p);

	public List<UserDTO> readUserAll(int userID);
//	public List<UserDTO> updateUser(int userID);

}