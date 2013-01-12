/**
 * 
 */
package com.booze.app.controller;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.booze.app.model.User;
import com.booze.app.services.UserService;

/**
 * @author Sushant Kumar Singh
 *
 */
@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/Log", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("Welcome home! the client locale is "+ locale.toString());
		User user = new User();
		Date dateOfBirth = new Date();
		user.setFirstName("Sushant");
		user.setLastName("Singh");
		user.setAddress("BTM");
		user.setEmail("sushant@gmail.com");
		user.setPassword("123456");
		user.setSex("M");
		user.setDateOfBirth(dateOfBirth);
		user.setPassword("123456");
		boolean flag = this.userService.saveUser(user);
		model.addAttribute("user", user);
		model.addAttribute("value", flag);
		
		return "layout.login";
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "layout.login";
	}
}
