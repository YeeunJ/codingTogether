package com.walab.coding.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Service.GoalServiceImpl;
import com.walab.coding.Service.UserServiceImpl;

/**
 * Handles requests for the application Mypage-informations page.
 */

@Controller
@RequestMapping(value = "/mypage/information")
public class MyinformationController {
	
//	@RequestMapping(value = "", method = RequestMethod.GET)
//	public String information() {
//		return "mypage/information";
//	}
	
	@Autowired
	UserServiceImpl userService;
	
	@Autowired
	GoalServiceImpl goalService;	
	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView viewUsers(ModelAndView mv) {
		
		int userID = 1; //지금 session 처리와 로그인을 안해서 넣어놓은 예시 데이터!! 나중에 session 처리 할께요!!
		
		List<UserDTO> users = userService.readUser(userID);
		System.out.println(users.toString());
		mv.addObject("users", users);
		mv.setViewName("mypage/information");
		
		List<GoalDTO> goals = goalService.readGoal(userID);
		System.out.println(goals.toString());
		mv.addObject("goals", goals);
		mv.setViewName("mypage/information");
		
		return mv;
	}
}