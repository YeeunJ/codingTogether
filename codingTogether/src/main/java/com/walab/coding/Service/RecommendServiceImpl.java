package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.RecommendDTO;
import com.walab.coding.Repository.RecommendDAO;

@Service("recommendService")
public class RecommendServiceImpl implements RecommendService {

	@Autowired
	RecommendDAO recommendDAO;
	
	@Override
	public List<RecommendDTO> readRecom() {
		List<RecommendDTO> recoms = recommendDAO.readRecom();
		
		return recoms;
	}
}
