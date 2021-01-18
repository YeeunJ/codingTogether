package com.walab.coding.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application manageCodingSite page.
 */

@Controller
@RequestMapping(value = "/manageCodingsite")
public class CodingsiteController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String manageCodingsite() {
		return "manageCodingsite";
	}
}
