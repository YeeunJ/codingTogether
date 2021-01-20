package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Repository.GoalDAO;


@Service("goalService")
public class GoalServiceImpl implements GoalService{
	
	@Autowired
	GoalDAO goalService ;
	
	
	@Override
	public List<GoalDTO> readGoal(int userID){
		List<GoalDTO> goals = goalService.readGoalAll(userID);
		return goals;
	}

	
//	@Override
//	public List<GoalDTO> countGoal(int userID){
//		List<GoalDTO> goalsCount = goalService.countGoal(userID);
//		return goalsCount;
//	}
	
	@Override
	public int updateGoal(GoalDTO dto) {
		// TODO Auto-generated method stub
		return goalService.updateGoal(dto);
	}
}
