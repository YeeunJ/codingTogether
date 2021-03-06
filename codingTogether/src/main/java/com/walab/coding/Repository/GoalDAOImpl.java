package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;

@Repository("goalDAO")
public class GoalDAOImpl implements GoalDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "goal";
	
	public List<GoalDTO> readGoal(int userID) {
		
		List<GoalDTO> goal = new ArrayList<GoalDTO>();
		
		Map<String, Object> goalParam = new HashMap<String, Object>();
		goalParam.put("userID", userID);
		
		return goal = sqlSession.selectList(namespace+".readGoal", goalParam);
	}
	
	public List<GoalDTO> readGoalAll(int userID) {
		
		List<GoalDTO> goalList = new ArrayList<GoalDTO>();
		
		Map<String, Object> goalListParam = new HashMap<String, Object>();
		goalListParam.put("userID", userID);
		
		return goalList = sqlSession.selectList(namespace+".readGoalList", goalListParam);
	}
	
	
	public int updateGoal(GoalDTO updatdGoal) {
		
		Map<String, Object> goalParam = new HashMap<String, Object>();
		goalParam.put("goal", updatdGoal.getGoal());
		goalParam.put("startDate", updatdGoal.getStartDate());
		goalParam.put("endDate", updatdGoal.getEndDate());
		goalParam.put("id", updatdGoal.getId());
		
		return sqlSession.update(namespace+".updateGoal", goalParam);
	}
}

