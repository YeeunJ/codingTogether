package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.UserDTO;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "user";
	
	public List<UserDTO> readUserAll(int userID) {
		
		List<UserDTO> userList = new ArrayList<UserDTO>();
		
		Map<String, Object> userListParam = new HashMap<String, Object>();
		userListParam.put("userID", userID);
		
		return userList = sqlSession.selectList(namespace+".userList", userListParam);
	}
//	public List<UserDTO> updateUser(int userID){
//		
//		int userList = new ArrayList<UserDTO>();
//
//		Map<String, Object> userListParam = new HashMap<String, Object>();
//		userListParam.put("userID", userID);
//		
//		return userList = sqlSession.update(namespace+".userList", userListParam);
//	}
}

	
