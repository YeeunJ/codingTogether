package com.walab.coding.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application RecommendProblems page.
 */

@Controller
@RequestMapping(value = "/register")
public class RegisterController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
}
