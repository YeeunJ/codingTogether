package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.GoalDTO;

public interface GoalService {
	List<GoalDTO> readGoal(int userID);
//	List<GoalDTO> countGoal(int userID);
	public int updateGoal(GoalDTO dto);

}
