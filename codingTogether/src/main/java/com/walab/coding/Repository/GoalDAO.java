package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.GoalDTO;

public interface GoalDAO {
	public List<GoalDTO> readGoal(int userID);
	public List<GoalDTO> readGoalAll(int userID);
//	public List<GoalDTO> countGoal(int userID);
	public int updateGoal(GoalDTO goalDTO);

}
