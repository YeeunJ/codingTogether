package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.UserProblemDTO;


public interface UserProblemDAO {
	public List<UserProblemDTO> readAll(int userID);
}
