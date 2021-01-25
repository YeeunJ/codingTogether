package com.walab.coding.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.coding.Model.RecomProblemsDTO;

@Repository("recomProblemsDAO")
public class RecomProblemsDAOImpl implements RecomProblemsDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "recomProblems";
	
	@Override
	public void createRecomProblem(RecomProblemsDTO rp) {
		sqlSession.insert(namespace + ".createRecomProblem", rp);
	}
}
