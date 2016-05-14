package org.AugytechSoftware.controller;

import java.util.List;

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
	public static String sessionname="NULL";
	public static String credential="NULL";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView model;
		if(credential.equals("NULL"))
		{
		model= new ModelAndView("index");
		model.addObject("WelcomeMessage", "");
		}
		else
		{
			model = new ModelAndView("loginsuccess");
			model.addObject("sessionname", sessionname);
			model.addObject("WelcomeMessage", "You are already logged in !!");
		}
		return model;
	}

	@RequestMapping(value = "/SignUpController", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@ModelAttribute("signup") org.AugytechSoftware.model.Signup signup) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(signup);
		session.getTransaction().commit();
		ModelAndView model = new ModelAndView("index");
		model.addObject("WelcomeMessage", "You have successfully registered !! Login to continue.");
		return model;
	}

	@RequestMapping(value = "/LoginController", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("input") String input, @RequestParam("password") String password) {

		ModelAndView model;
		model = new ModelAndView("index");
		model.addObject("WelcomeMessage", "Wrong credentials.");
		Session session = sessionFactory.openSession();
		List<Signup> es = session.createCriteria(Signup.class).list();
		for (Signup e : es) {
			if (((input.equals(e.getPhone())) || (input.equals(e.getEmail()))) && (password.equals(e.getPassword()))) {
				model = new ModelAndView("loginsuccess");
				model.addObject("sessionname", sessionname);
				model.addObject("WelcomeMessage", "You have successfully logged in !!");
				credential=input;
				break;
			}
		}
		return model;
	}

	@RequestMapping(value = "/defaultform", method = RequestMethod.POST)
	public ModelAndView getForm(@RequestParam("name") String name) {
		sessionname=name;
		ModelAndView model;
		if(credential.equals("NULL"))
		{
		model= new ModelAndView("index");
		model.addObject("WelcomeMessage", "");
		}
		else
		{
			model = new ModelAndView("loginsuccess");
			model.addObject("sessionname", sessionname);
			model.addObject("WelcomeMessage", "You have successfully logged in !!");
		}
		return model;
	}
}
