package com.walab.coding.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemDTO;
import com.walab.coding.Service.GoalServiceImpl;
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
	
	@Autowired
	GoalServiceImpl goalService;	
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView viewProblems(ModelAndView mv) {
		
		int userID = 1;
		
		//List<UserProblemDTO> problems = userProblemService.read(userID);
		//List<GoalDTO> goals = userProblemService.readGoal(userID);
		
		//mv.addObject("goals", goals);
		//mv.addObject("problems", problems);
		
		
		List<UserProblemDTO> problems = userProblemService.read(userID);
		List<GoalDTO> goals = goalService.readGoal(userID);
		
		mv.addObject("goals", goals);
		mv.addObject("problems", problems);
		mv.setViewName("mypage/problems");

		
		return mv;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateProblem(HttpServletRequest httpServletRequest) {
		
		int userID = 1;
		
		UserProblemDTO upd = new UserProblemDTO();
		upd.setDifficulty(httpServletRequest.getParameter("difficulty"));
		upd.setMemo(httpServletRequest.getParameter("memo"));
		upd.setId(Integer.parseInt(httpServletRequest.getParameter("id")));
		
		if(userProblemService.update(upd) > 0) {
			System.out.println("success");
		}else {
			System.out.println("fail");
		}
		
		List<UserProblemDTO> problems = userProblemService.read(userID);
		ModelAndView mv = new ModelAndView();
		mv.addObject("problems", problems);
		mv.setViewName("mypage/solvedProblemsContent");
		
		return mv;

	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deleteProblem(HttpServletRequest httpServletRequest) {		
		
		int userID = 1;
		int userProblemID = Integer.parseInt(httpServletRequest.getParameter("id"));
		
		System.out.println(userProblemID);
		if(userProblemService.delete(userProblemID) > 0) {
			System.out.println("success");
		}else {
			System.out.println("fail");
		}
		
		List<UserProblemDTO> problems = userProblemService.read(userID);
		ModelAndView mv = new ModelAndView();
		mv.addObject("problems", problems);
		mv.setViewName("mypage/solvedProblemsContent");
		return mv;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView searchProblem(HttpServletRequest httpServletRequest) {		
		
		String searchValue= httpServletRequest.getParameter("searchValue");
		
		
		
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
