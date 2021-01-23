package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.RecommendDTO;

public interface RecommendDAO {

	public List<RecommendDTO> readRecom();
	
	public void readRecomCount(RecommendDTO recommend, int index);
}
