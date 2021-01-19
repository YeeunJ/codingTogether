package com.walab.coding.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.walab.coding.Model.CodingSiteDTO;
import com.walab.coding.Service.CodingSiteServiceImpl;

/**
 * Handles requests for the application manageCodingSite page.
 */


@Controller
@RequestMapping(value = "/manageCodingsite")
public class CodingsiteController {
	
	@Autowired
	CodingSiteServiceImpl codingSiteService;
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String CodingSiteList(Model model) {
		model.addAttribute("posts",codingSiteService.getCodingSiteList());
		return "manageCodingsite";
		
	}
	
	@RequestMapping(value="/addok", method = RequestMethod.POST)
	public String addCodingSiteOK(CodingSiteDTO dto) {
		if(codingSiteService.insertCodingSite(dto)==0)
				System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!");
		
		return "redirect:../manageCodingsite";
		
	}

	@RequestMapping(value="/editok", method = RequestMethod.POST)
	public String editPostOK(CodingSiteDTO dto) {
		if(codingSiteService.updateCodingSite(dto)==0)
				System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공!!");
		return "redirect:../manageCodingsite";
		
	}
	@RequestMapping(value="/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id, HttpServletRequest request) {
		if(codingSiteService.deleteCodingSite(id)==0)
				System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!");
		
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
	}
}
