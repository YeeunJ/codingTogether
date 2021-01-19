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

@Repository("userProblemDAO")
public class UserProblemDAOImpl implements UserProblemDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "userProblem";
	
	public List<UserProblemDTO> readAll(int userID) {
		
		List<UserProblemDTO> userProblemList = new ArrayList<UserProblemDTO>();
		
		Map<String, Object> userProblemListParam = new HashMap<String, Object>();
		userProblemListParam.put("userID", userID);
		
		return userProblemList = sqlSession.selectList(namespace+".userProblemList", userProblemListParam);
	}
	
	public List<GoalDTO> readGoalAll(int userID){
		List<GoalDTO> userGoalList = new ArrayList<GoalDTO>();
		
		Map<String, Object> userGoalListParam = new HashMap<String, Object>();
		userGoalListParam.put("userID", userID);
		
		return userGoalList = sqlSession.selectList(namespace+".userGoalList", userGoalListParam);
		
	}
}
