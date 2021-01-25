package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.RecomProblemsDTO;
import com.walab.coding.Repository.RecomProblemsDAO;

@Service("recomProblemsService")
public class RecomProblemsServiceImpl implements RecomProblemsService {

	@Autowired
	RecomProblemsDAO recomProblemsDAO;

	@Override
	public void createRecomProblem(List<RecomProblemsDTO> recomprobs) {
		for(RecomProblemsDTO rp : recomprobs) {
			recomProblemsDAO.createRecomProblem(rp);
		}
	}
}
