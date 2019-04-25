package com.exam.order.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView showContact(Model model) {
		ModelAndView map = new ModelAndView("pages/contact/contact");

		return map;
	}
}
