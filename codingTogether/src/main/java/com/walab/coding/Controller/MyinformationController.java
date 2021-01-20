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
//	@RequestMapping(value = "/editok", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView editGoal(ModelAndView mv) {
//		
//		int userID = 1;
//		GoalDTO goal; //지금 session 처리와 로그인을 안해서 넣어놓은 예시 데이터!! 나중에 session 처리 할께요!!
//		
//		goal = goalService.updateGoal(userID);
//		System.out.println(goal.toString());
//		mv.addObject("updateGoal", goal);
//		mv.setViewName("mypage/information");
////		if(goalService.updateGoal(GoalDTO goalDTO)==0)
////		System.out.println("목표 수정 실패");
////		else
////		System.out.println("목표 수정 성공!!");
//		
//		return mv;
//	}	
	
//	@RequestMapping(value="/editok", method = {RequestMethod.GET, RequestMethod.POST})
//	public String editGoal(GoalDTO goalDTO, ModelAndView mv) {
//		mv.addObject("goals", goalService.updateGoal(goalDTO));
////		mv.addObject("startDate", startDate);
////		mv.addObject("endDate", endDate);
//
//		if(goalService.updateGoal(goalDTO)==0)
//				System.out.println("목표 수정 실패");
//		else
//			System.out.println("목표 수정 성공!!");
//		return "redirect:/mypage/information";	
//	}
	@RequestMapping(value="/editok", method = RequestMethod.POST)
	public String editGoal(GoalDTO goalDTO) {
		if(goalService.updateGoal(goalDTO)==0)
				System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:/";
	}	

}