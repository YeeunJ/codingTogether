package com.walab.coding.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application Mypage-informations page.
 */

@Controller
@RequestMapping(value = "/mypage/information")
public class MyinformationController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String information() {
		return "mypage/information";
	}
}
