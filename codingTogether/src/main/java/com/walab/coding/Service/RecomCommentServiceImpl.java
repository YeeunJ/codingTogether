package com.walab.coding.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.RecomCommentDTO;
import com.walab.coding.Repository.RecomCommentDAO;

@Service("recomCommentService")
public class RecomCommentServiceImpl implements RecomCommentService {
	
	@Autowired
	RecomCommentDAO recomCommentDAO;
	
	@Override
	public List<RecomCommentDTO> read() {
		
		List<RecomCommentDTO> list = recomCommentDAO.readAll();
		
		return list;
	}

	@Override
	public List<Map<Integer, Integer>> readCount() {
		
		List<Map<Integer, Integer>> countList = recomCommentDAO.readCommentCount();
		
		return countList;
		
	}

	@Override
	public void createComment(RecomCommentDTO r) {
		
		recomCommentDAO.createComment(r);
		
	}

}
