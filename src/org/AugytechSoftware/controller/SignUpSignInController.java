package org.AugytechSoftware.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignUpSignInController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getadmissionform()
	{
		ModelAndView model = new ModelAndView("index");

		return model;
	}

	
}
