package org.AugytechSoftware.controller;

import org.AugytechSoftware.model.Signup;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignUpSignInController {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	Signup signup;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("WelcomeMessage" , "");
		return model;
	}

	@RequestMapping(value = "/SignUpController", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(
			@ModelAttribute("registration") org.AugytechSoftware.model.Signup signup) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(signup);
		session.getTransaction().commit();
		ModelAndView model = new ModelAndView("index");
		model.addObject("WelcomeMessage" , "You have successfully registered !! Login to continue.");
		return model;
	}
	@RequestMapping(value = "/LoginController", method = RequestMethod.POST)
	public ModelAndView login(
			@RequestParam("input") String input, @RequestParam("password") String password)
	{
		ModelAndView model;
		Session session = sessionFactory.openSession();
		signup = (Signup) session.get(Signup.class, input);
		if(signup!=null)
		{
		if (signup.getPassword().equals(password))
			{
			model = new ModelAndView("index");
			model.addObject("WelcomeMessage" , "You have successfully logged in !!");
			}
		else
		{
			model = new ModelAndView("index");
			model.addObject("WelcomeMessage" , "Wrong credentials.");

		}
		}
		else
		{
			model = new ModelAndView("index");
			model.addObject("WelcomeMessage" , "Wrong credentials.");
		}
		return model;
	}

}
