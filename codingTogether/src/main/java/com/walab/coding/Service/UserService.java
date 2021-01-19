package com.walab.coding.Service;

import java.util.List;

import com.walab.coding.Model.UserDTO;

public interface UserService {
	List<UserDTO> readUser(int userID);

}