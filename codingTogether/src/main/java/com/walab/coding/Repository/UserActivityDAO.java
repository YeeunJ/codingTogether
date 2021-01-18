package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.GoalDTO;

public interface UserActivityDAO {
	public List<GoalDTO> readGoalAll(int userID);

}
