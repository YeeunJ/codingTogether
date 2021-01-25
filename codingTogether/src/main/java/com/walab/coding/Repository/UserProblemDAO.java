package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;


public interface UserProblemDAO {
	public List<UserProblemDTO> readAll(int userID);
	public int updateProblem(UserProblemDTO upd);
	public int deleteProblem(int userProblemID);
	public int readSolvedP(int userID);
	
}
