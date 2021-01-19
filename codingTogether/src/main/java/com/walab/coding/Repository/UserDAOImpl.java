package com.walab.coding.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemsDTO;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int createUsergoal(GoalDTO goal) {
		// TODO Auto-generated method stub
		sqlSession.insert("userInfo.createUsergoal", goal);
		return 0;
	}

	@Override
	public int createUserInfo(UserDTO user) {
		sqlSession.insert("userInfo.createUserInfo", user);
		return 0;
	}

	@Override
	public void createUserProblem(UserProblemsDTO p) {
		
		sqlSession.insert("userInfo.createUserProblem", p);
	
	}


}
