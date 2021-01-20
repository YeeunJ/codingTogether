package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Model.UserProblemDTO;

public interface UserProblemService {
	List<UserProblemDTO> read(int userID);
}
