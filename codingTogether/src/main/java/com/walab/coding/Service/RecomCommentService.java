package com.walab.coding.Service;

import java.util.List;
import java.util.Map;

import com.walab.coding.Model.RecomCommentDTO;

public interface RecomCommentService {
	List<Map<String, String>> read(int recomID);
	List<Map<Integer,Integer>> readCount();
	void createComment(RecomCommentDTO r);
}
