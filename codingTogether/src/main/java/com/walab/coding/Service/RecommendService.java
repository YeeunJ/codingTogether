package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.RecomProblemsDTO;
import com.walab.coding.Model.RecommendDTO;

public interface RecommendService {

	List<RecommendDTO> readRecom();
	
	List<RecomProblemsDTO> readRecomProblems(int recomID);
	
	int createRecomProblem(RecommendDTO recommend);
}
