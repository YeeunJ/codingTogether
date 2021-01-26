package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemDTO;

public interface UserProblemService {
	List<UserProblemDTO> read(int userID);
	
	int readSolvedP(int userID);
	public List<String> readRank(int probs);

}
