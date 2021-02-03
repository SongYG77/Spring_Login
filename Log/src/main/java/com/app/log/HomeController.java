package com.app.log;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.log.service.UserService;

@Controller
@RequestMapping(value = "/")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	UserService service;
	int check;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void getIndexPage() throws Exception {
		logger.info("get index");
	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String postRegister(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		HttpSession session = req.getSession();
		logger.info("post register");
		check = service.register(user);
		if (check == -1) {
			session.setAttribute("overlap", -1);
			return "redirect:/user";

		} else {
			session.setAttribute("overlap", 0);
			return "/clear";
		}
	}

	@RequestMapping(value = "/clear", method = RequestMethod.GET)
	public void getregisterClear() throws Exception {
		logger.info("register");
	}

	@RequestMapping(value = "/clear", method = RequestMethod.POST)
	public String PostregisterClear() throws Exception {

		logger.info("register");
		return "/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get login");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post Login");
		HttpSession session = req.getSession();
		User login = service.Login(user);

		if (login != null) {
			System.out.println(login.toString());
			session.setAttribute("member", login);
			session.setAttribute("name", login.getName());
			return "redirect:/";
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login";
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String getLogout(HttpSession session) throws Exception {
		session.invalidate();
		logger.info("get logout");
		return "redirect:/";
	}
}
