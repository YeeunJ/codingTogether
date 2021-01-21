package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Repository.GoalDAO;


@Service("goalService")
public class GoalServiceImpl implements GoalService{
	
	@Autowired
	GoalDAO goalDAO ;
	
	
	@Override
	public List<GoalDTO> readGoal(int userID){
		List<GoalDTO> goal = goalDAO.readGoal(userID);
		return goal;
	}
	
	@Override
	public List<GoalDTO> readGoalAll(int userID){
		List<GoalDTO> goalList = goalDAO.readGoalAll(userID);
		return goalList;
	}

	
//	@Override
//	public List<GoalDTO> countGoal(int userID){
//		List<GoalDTO> goalsCount = goalService.countGoal(userID);
//		return goalsCount;
//	}
	
	@Override
	public int updateGoal(GoalDTO goalDTO) {
		// TODO Auto-generated method stub
		return goalDAO.updateGoal(goalDTO);
	}

}
