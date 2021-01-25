package com.walab.coding.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.RecomCountDTO;
import com.walab.coding.Model.RecomProblemsDTO;
import com.walab.coding.Model.RecommendDTO;

@Repository("recommendDAO")
public class RecommendDAOImpl implements RecommendDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "recommend";
	private List<RecommendDTO> recommendList = new ArrayList<RecommendDTO>();
	
	public List<RecommendDTO> readRecom() {
		
		recommendList = sqlSession.selectList(namespace+".readRecommendList");
		
		for(int i=0;i<recommendList.size();i++) {
			readRecomCount(recommendList.get(i), i);
		}
		
		return recommendList;
	}
	
	public void readRecomCount(RecommendDTO recommend, int index) {
		
		List<RecomCountDTO> recommendCountList = new ArrayList<RecomCountDTO>();
		int cnt = 0;
		Map<String, Object> recommendCountListParam = new HashMap<String, Object>();
		recommendCountListParam.put("recomID", recommend.getId());
		
		recommendCountList = sqlSession.selectList(namespace+".readRecommendCountList", recommendCountListParam);
		
		for(int i=0;i<recommendCountList.size();i++) {
			RecomCountDTO recomCount = recommendCountList.get(i);
			
			cnt += recomCount.getRecommend();
		}
		
		recommend.setRecomCount(cnt);
		
		recommendList.set(index, recommend);
	}
	
	public List<RecomProblemsDTO> readRecomProblems(int recomID) {
		List<RecomProblemsDTO> recommendProblemsList = new ArrayList<RecomProblemsDTO>();
		
		Map<String, Object> recommendProblemsListParam = new HashMap<String, Object>();
		recommendProblemsListParam.put("recomID", recomID);
		
		return recommendProblemsList = sqlSession.selectList(namespace+".readRecommendProblemList", recommendProblemsListParam);
	}
	
	@Override
	public int createRecomProblem(RecommendDTO recommend) {	
		sqlSession.insert(namespace+".createRecomProblem", recommend);
		int recomID = recommend.getId();
		
		return recomID;
	}
}
