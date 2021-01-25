package com.walab.coding.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.coding.Model.TagDTO;
import com.walab.coding.Repository.TagDAO;

@Service("tagService")
public class TagServiceImpl implements TagService {

	@Autowired
	TagDAO tagDAO;

	@Override
	public void createTag(List<TagDTO> recomTags) {
		for(TagDTO t : recomTags) {
			tagDAO.createTag(t);
		}
	}
}
