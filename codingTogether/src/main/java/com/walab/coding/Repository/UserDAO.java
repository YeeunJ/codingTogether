package com.walab.coding.Repository;

import java.util.List;

import com.walab.coding.Model.UserDTO;

public interface UserDAO {
	public List<UserDTO> readUserAll(int userID);
//	public List<UserDTO> updateUser(int userID);


}