package com.walab.coding.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application Mypage-activities page.
 */

@Controller
@RequestMapping(value = "/mypage/activities")
public class Myactivities {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String activities() {
		return "mypage/activities";
	}

}
