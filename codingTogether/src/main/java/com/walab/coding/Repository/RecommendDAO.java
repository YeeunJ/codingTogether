package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.RecomProblemsDTO;
import com.walab.coding.Model.RecommendDTO;

public interface RecommendDAO {

	public List<RecommendDTO> readRecom();
	
	public void readRecomCount(RecommendDTO recommend, int index);
	
	public List<RecomProblemsDTO> readRecomProblems(int recomID);
	
	public int createRecomProblem(RecommendDTO recommend);
}
