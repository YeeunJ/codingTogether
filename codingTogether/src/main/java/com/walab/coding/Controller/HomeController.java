package com.walab.coding.Controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Model.GoalDTO;
import com.walab.coding.Model.UserProblemsDTO;
import com.walab.coding.Service.CodingSiteServiceImpl;
import com.walab.coding.Service.UserServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	CodingSiteServiceImpl codingSiteService;
	UserServiceImpl UserService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView viewHome(ModelAndView mv) {
			
		int userID = 1;
		List<CodingSiteDTO> codingSite = codingSiteService.read();
		mv.addObject("CodingSite", codingSite);
		mv.addObject("userID", userID);
		mv.setViewName("home");
		
		return mv;
	}
	
	// 문제 등록 모달로부터 UserProblemsDTO LiST를 반환받아야 함. 
	@RequestMapping(value = "/createProblem", method=RequestMethod.POST)

	public @ResponseBody String createProblem(@RequestParam(value="siteId[]") List<String> siteId, @RequestParam(value="problem[]") List<String> problem, @RequestParam(value="link[]") List<String> link) throws UnsupportedEncodingException {
		List<UserProblemsDTO> probs = new ArrayList<UserProblemsDTO>();
//		request.setCharacterEncoding("UTF-8");
//		String test = request.getParameter("test");
//		String testarr[] = request.getParameterValues("testarr");
//		System.out.println(test);
//		String[] siteID_arr = request.getParameterValues("siteId");
//		String[] prob_arr = request.getParameterValues("problem");
//		String[] link_arr = request.getParameterValues("link");
//		
		int userID = 1;
		
		
		for(int i=0 ; i<siteId.size() ; i++) {
			System.out.println(siteId.get(i));
			UserProblemsDTO p = new UserProblemsDTO();
			p.setUserID(userID);
			p.setSiteID(Integer.parseInt(siteId.get(i)));
			p.setProblem(problem.get(i));
			p.setLink(link.get(i));
			p.setDifficulty(null);
			p.setMemo(null);
			
			probs.add(p);
		}
		
		UserService.createUserProblem(probs);
		
		return "success";
	}
}
