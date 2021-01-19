package com.walab.coding.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;
import com.walab.coding.Service.UserProblemService;
import com.walab.coding.Service.UserProblemServiceImpl;

/**
 * Handles requests for the application Mypage-problems page.
 */

@Controller
@RequestMapping(value = "/mypage/problems")
public class MyproblemsController {
	
	@Autowired
	UserProblemServiceImpl userProblemService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView viewProblems(ModelAndView mv) {
		
		int userID = 1; //지금 session 처리와 로그인을 안해서 넣어놓은 예시 데이터!! 나중에 session 처리 할께요!!
		
//		List<UserProblemDTO> problems = userProblemService.read(userID);
//		List<GoalDTO> goals = userProblemService.readGoal(userID);
//		mv.addObject("goals", goals);
//		mv.addObject("problems", problems);
//		mv.setViewName("mypage/problems");
		
		return mv;
	}
}
