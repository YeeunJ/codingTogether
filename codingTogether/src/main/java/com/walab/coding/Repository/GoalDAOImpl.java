package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.GoalDTO;

@Repository("goalDAO")
public class GoalDAOImpl implements GoalDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "goal";
	
	public List<GoalDTO> readGoalAll(int userID) {
		
		List<GoalDTO> goalList = new ArrayList<GoalDTO>();
		
		Map<String, Object> goalListParam = new HashMap<String, Object>();
		goalListParam.put("userID", userID);
		
		return goalList = sqlSession.selectList(namespace+".readGoalList", goalListParam);
	}
//	public List<GoalDTO> countGoal(int userID) {
//		
//		List<GoalDTO> goalCount = new ArrayList<GoalDTO>();
//		
//		Map<String, Object> goalCountParam = new HashMap<String, Object>();
//		goalCountParam.put("userID", userID);
//		
//		return goalCount = sqlSession.selectList(namespace+".goalCount", goalListParam);
//	}
	

}
