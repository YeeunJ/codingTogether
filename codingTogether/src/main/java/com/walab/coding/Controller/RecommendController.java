package com.walab.coding.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.RecommendDTO;
import com.walab.coding.Service.RecommendProblemServiceImpl;

/**
 * Handles requests for the application RecommendProblems page.
 */

@Controller
@RequestMapping(value = "/recommendProblem")
public class RecommendController {
	
	@Autowired
	RecommendProblemServiceImpl recommendProblemService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView recommendProblem(ModelAndView mv) {
		//임의 값
		//int userID = 3;
				
		List<RecommendDTO> recoms = recommendProblemService.readRecom();
				
		mv.addObject("recoms", recoms);
		mv.setViewName("recommendProblem");
				
		return mv;
	}
}