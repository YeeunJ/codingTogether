package com.walab.coding.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;
import com.walab.coding.Service.GoalServiceImpl;
import com.walab.coding.Service.UserProblemServiceImpl;

/**
 * Handles requests for the application Mypage-activities page.
 */

@Controller
@RequestMapping(value = "/mypage/activities")
public class MyactivitiesController {

	@Autowired
	GoalServiceImpl goalService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView viewProblems(ModelAndView mv) {
		
		int userID = 1; //지금 session 처리와 로그인을 안해서 넣어놓은 예시 데이터!! 나중에 session 처리 할께요!!
		
		List<GoalDTO> goalList = goalService.readGoalAll(userID);
		mv.addObject("goalList", goalList);
		mv.setViewName("mypage/activities");
		
		return mv;
	}

}
