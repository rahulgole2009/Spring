package com.rahul.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rahul.dao.UserDao;
import com.rahul.model.UserBean;
import com.rahul.model.loginBean;

@Controller
public class LoginController {

	@Autowired
	UserBean user;
	@Autowired
	loginBean login;

	@Autowired
	UserDao userDao;

	@RequestMapping("/login")
	public ModelAndView showLoginPage() {
		ModelAndView mav = new ModelAndView("Login");
		mav.addObject("login", login);
		return mav;
	}

	@RequestMapping("/register")
	public ModelAndView showRegisterPage() {
		ModelAndView mav = new ModelAndView("Register");
		mav.addObject("user", user);
		return mav;
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView regiesterUser(@ModelAttribute("user") UserBean user) {

		userDao.saveUser(user);
		ModelAndView mav = new ModelAndView("Register");
		mav.addObject("user", user);
		mav.addObject("message", "User saved sucessfully !!\n Please Login using UserName " + user.getUsername());
		return mav;
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public ModelAndView loginUser(@ModelAttribute("login") UserBean user) {

		user = userDao.getUserByLogin(user);
		ModelAndView mav = null;
		if (user == null) {
			mav = new ModelAndView("Login");
			mav.addObject("login", login);
			mav.addObject("message", "Invalid Username or Password");
		} else {
			mav = new ModelAndView("Welcome");
			System.out.println(user);
			mav.addObject("user", user);
		}

		return mav;
	}

	@RequestMapping(value = "/allUserDetails", method = RequestMethod.GET)
	public ModelAndView loginUser() {

		List<UserBean> userList = userDao.getAllUsers();
		ModelAndView mav = null;
		if (userList.isEmpty()) {
			mav = new ModelAndView("AllUsers");
			mav.addObject("message", "No Users Found !!");
		} else {
			mav = new ModelAndView("AllUsers");
			System.out.println(userList);
			mav.addObject("userList", userList);
		}

		return mav;
	}

	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	public ModelAndView editUser(@RequestParam int uid) {

		user = userDao.getUser(uid);
		ModelAndView mav = null;

		mav = new ModelAndView("EditUser");
		System.out.println(user);
		mav.addObject("user", user);

		return mav;
	}

	@RequestMapping(value = "/editUserDetails", method = RequestMethod.POST)
	public ModelAndView editUserDetails(@ModelAttribute("user") UserBean user) {

		user = userDao.editUserDetails(user);
		ModelAndView mav = new ModelAndView("EditUser");
		mav.addObject("user", user);
		mav.addObject("message", "User Updated Sucessfully !!");
		return mav;
	}

}
