package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.GoalDTO;

public interface UserActivityService {
	List<GoalDTO> readGoal(int userID);

}

