package com.walab.coding.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String viewHome() {
		return "home";
	}
}
