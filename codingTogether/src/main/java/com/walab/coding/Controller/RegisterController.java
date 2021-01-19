package com.walab.coding.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserDTO;
import com.walab.coding.Service.UserServiceImpl;

/**
 * Handles requests for the application RecommendProblems page.
 */

@Controller
public class RegisterController {
	
//	UserServiceImpl UserService = new UserServiceImpl();
	@Autowired
	UserServiceImpl UserService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "/registerUserinfo", method = RequestMethod.POST)
	public String registerUserinfo(HttpServletRequest httpServeletRequest) {
		String userID = httpServeletRequest.getParameter("userID");
		String nickName = httpServeletRequest.getParameter("nickName");
		String userNumber = httpServeletRequest.getParameter("userNumber");
		String intro = httpServeletRequest.getParameter("intro");
		
		UserDTO u = new UserDTO();
		u.setName("최승아");
		u.setEmail(userID);
		u.setNickName(nickName);
		u.setUserNumber(userNumber);
		u.setIntro(intro);
		
		int result = UserService.registerUserinfo(u);
		return "home";
	}
	
	@RequestMapping(value = "/registerUsergoal", method = RequestMethod.POST)
	public String registerUsergoal(HttpServletRequest httpServeletRequest) throws ParseException {
		int userID = 1;
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String goal = httpServeletRequest.getParameter("goal");
		Date startDate = transFormat.parse(httpServeletRequest.getParameter("startDate"));
		Date endDate = transFormat.parse(httpServeletRequest.getParameter("endDate"));
		int goalNum = Integer.parseInt(httpServeletRequest.getParameter("goalNum"));
		
		GoalDTO g = new GoalDTO();
		g.setId(0);
		g.setUserID(userID);
		g.setGoalNum(goalNum);
		g.setGoal(goal);
		g.setStartDate(startDate);
		g.setEndDate(endDate);
		g.setRegDate(null);

		
		int result = UserService.registerUsergoal(g);
		
		return "home";
		
	}
}