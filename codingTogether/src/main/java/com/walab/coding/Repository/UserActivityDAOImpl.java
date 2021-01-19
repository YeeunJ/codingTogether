package com.walab.coding.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;

@Repository("userActivityDAO")
public class UserActivityDAOImpl implements UserActivityDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "goal";
	
	public List<GoalDTO> readGoalAll(int userID){
		List<GoalDTO> userGoalList = new ArrayList<GoalDTO>();
		
		Map<String, Object> userGoalListParam = new HashMap<String, Object>();
		userGoalListParam.put("userID", userID);
		
		return userGoalList = sqlSession.selectList(namespace+".userGoalList", userGoalListParam);
		
	}
}
