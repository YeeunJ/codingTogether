package com.walab.coding.Controller;

import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Model.RecomCommentDTO;
import com.walab.coding.Model.RecommendDTO;
import com.walab.coding.Model.UserProblemDTO;
import com.walab.coding.Service.CodingSiteServiceImpl;
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
	@Autowired
	CodingSiteServiceImpl codingSiteService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView recommendProblem(ModelAndView mv) {
		//임의 값
		//int userID = 3;
				
		List<RecommendDTO> recoms = recommendProblemService.readRecom();
//		List<RecomCommentDTO> recomComment = recomCommentService.read();
		List<Map<Integer,Integer>> commentCount = recomCommentService.readCount();
		List<CodingSiteDTO> codingSite = codingSiteService.read();
		
		
		mv.addObject("CodingSite", codingSite);
		mv.addObject("recoms", recoms);
//		mv.addObject("recomComment", recomComment);
		mv.addObject("commentCount", commentCount);
				
		mv.setViewName("recommendProblem");

		return mv;
	}
	
	
	
	@RequestMapping(value = "/addComment", method = RequestMethod.POST)
	@ResponseBody
	public String addComment(HttpServletRequest request) {
		int recomID = Integer.parseInt(request.getParameter("recomID"));
		int userId = 2;
		String content = request.getParameter("content");
		
		RecomCommentDTO dto = new RecomCommentDTO();
		
		dto.setUserId(userId);
		dto.setRecomID(recomID);
		dto.setContent(content);
		
		recomCommentService.createComment(dto);
		
		String html = "<div>"+content+"</div>";
		
		return html;

	}
	
	@RequestMapping(value = "/readComment", method = RequestMethod.POST)
	@ResponseBody
	public String readComment(HttpServletRequest request) {
		
		int recomID = Integer.parseInt(request.getParameter("recomID"));		
		List<Map<String,String>> recomComment = recomCommentService.read(recomID);

		System.out.println(recomComment.isEmpty());
		System.out.println(recomComment.size());
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date startDate = transFormat.parse(httpServeletRequest.getParameter("startDate"));
		
		
		int userid=2;
		String html="<input type=\"text\" name=\"writer\" value=\""+userid+"\" hidden>\n"
				+ "  <input type=\"text\" name=\"recomID\" value=\""+recomID+"\" hidden>";
		
		for(int i=0 ; i<recomComment.size();i++) {
			String regDate = transFormat.format(recomComment.get(i).get("regDate"));
			
			html+="<div class=\'comment-wrapper\'>\n"
				+ "		<span class=\'username\'>"+recomComment.get(i).get("name")+"</span><span class=\"commentdate\">"+regDate+"</span>\n"
				+ "		<p class=\"comment\">"+recomComment.get(i).get("content")+"</p>\n"
				+ "	</div>";
		}
		System.out.println(html);
		
		return html;
//		ModelAndView mv = new ModelAndView();
//
//		mv.addObject("test", "test입니동");
//		mv.addObject("recomComment", recomComment);
//		mv.setViewName("redirect:/ajaxContent/recomCommentContent");
////		mv.setViewName("../ajaxContent/recomCommentContent");
//		
//		return mv;
	}
}