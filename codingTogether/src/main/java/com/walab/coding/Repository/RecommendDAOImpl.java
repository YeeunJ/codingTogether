package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.RecommendDTO;

@Repository("recommendDAO")
public class RecommendDAOImpl implements RecommendDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "recommend";
	
	public List<RecommendDTO> readRecom() {
		
		List<RecommendDTO> recommendList = new ArrayList<RecommendDTO>();
		
		Map<String, Object> recommendListParam = new HashMap<String, Object>();
		//recommendListParam.put("userID", userID);
		
		return recommendList = sqlSession.selectList(namespace+".recommendList", recommendListParam);
	}
}
