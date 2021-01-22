package com.walab.coding.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.RecomCommentDTO;
import com.walab.coding.Model.RecommendDTO;
import com.walab.coding.Service.RecomCommentServiceImpl;
import com.walab.coding.Service.RecommendServiceImpl;

/**
 * Handles requests for the application RecommendProblems page.
 */

@Controller
@RequestMapping(value = "/recommendProblem")
public class RecommendController {
	
	@Autowired
	RecommendServiceImpl recommendProblemService;
	@Autowired
	RecomCommentServiceImpl recomCommentService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView recommendProblem(ModelAndView mv) {
		//임의 값
		//int userID = 3;
				
		List<RecommendDTO> recoms = recommendProblemService.readRecom();
		List<RecomCommentDTO> recomComment = recomCommentService.read();
		List<Map<Integer,Integer>> commentCount = recomCommentService.readCount();
				
		mv.addObject("recoms", recoms);
		mv.addObject("recomComment", recomComment);
		mv.addObject("commentCount", commentCount);
		
		for(int i=0 ; i<recomComment.size() ; i++) {
			System.out.println("hello: "+recomComment.get(i));
		}
		System.out.println(commentCount.get(2));
		
		mv.setViewName("recommendProblem");

		return mv;
	}
	
	@RequestMapping(value = "/addComment", method = RequestMethod.POST)
	@ResponseBody
	public String addComment(HttpServletRequest request) {
		int recomID = Integer.parseInt(request.getParameter("recomID"));
		String content = request.getParameter("content");
		
		RecomCommentDTO dto = new RecomCommentDTO();
		dto.setRecomID(recomID);
		dto.setContent(content);
		
		recomCommentService.createComment(dto);
		
		String html = "<div>"+content+"</div>";
		
		return html;

	}
}