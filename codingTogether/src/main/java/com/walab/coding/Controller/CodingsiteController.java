package com.walab.coding.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Service.CodingSiteServiceImpl;

/**
 * Handles requests for the application manageCodingSite page.
 */


@Controller
//@RequestMapping(value = "/manageCodingsite")
public class CodingsiteController {
	
	@Autowired
	CodingSiteServiceImpl codingSiteService;
	
	@RequestMapping(value="manageCodingsite", method=RequestMethod.GET)
	public ModelAndView CodingSiteList(ModelAndView mv) {
		mv.addObject("posts", codingSiteService.read());
		mv.setViewName("codingSite");
		return mv;
	}
	
	@RequestMapping(value="manageCodingsite/addSite", method = RequestMethod.POST)
	public String addCodingSiteOK(CodingSiteDTO dto) {
		System.out.println("in addok");
		if(codingSiteService.insertCodingSite(dto)==0)
				System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!");
		
		return "redirect:../manageCodingsite";
		
	}

	@RequestMapping(value="manageCodingsite/editok", method = RequestMethod.POST)
	public String editPostOK(CodingSiteDTO dto) {
		System.out.println(dto.toString());
		if(codingSiteService.updateCodingSite(dto)==0)
				System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:../manageCodingsite";
		
	}
	@RequestMapping(value="manageCodingsite/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id, HttpServletRequest request) {
		if(codingSiteService.deleteCodingSite(id)==0)
				System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!");
		
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
	}
	
	@RequestMapping(value = "manageCodingsite/sitelist", method = RequestMethod.GET,produces = "application/text; charset=utf8")
	@ResponseBody
	public String home2(Locale locale, Model model) {
		ArrayList<String> data = new ArrayList<String>();
		List<CodingSiteDTO> codingSite = codingSiteService.read();
		
		String html="";
		for(CodingSiteDTO i : codingSite) {
			html +=  "<li>" +i.getSiteName()+"<a href='" + i.getSiteUrl() + "'>"+i.getSiteUrl()+"</a></li>";
		}
		System.out.println(html);
		return html;
	}
}
