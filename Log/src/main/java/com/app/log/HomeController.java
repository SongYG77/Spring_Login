package com.app.log;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	UserService service;
	int check;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void getIndexPage() throws Exception {
		//logger.info("get index");
	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		//logger.info("get register");
	}

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String postRegister(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = req.getSession();
		//logger.info("post register");
		check = service.register(user);
		int have_overlap = -1;
		int no_overlap = 0;
		
		if (check == have_overlap) {
			session.setAttribute("overlap", have_overlap);
			
			return "redirect:/user";

		} else {
			session.setAttribute("overlap", no_overlap);
			
			return "/clear";
		}
	}

	@RequestMapping(value = "/clear", method = RequestMethod.GET)
	public void getregisterClear() throws Exception {
		//logger.info("register");
	}

	@RequestMapping(value = "/clear", method = RequestMethod.POST)
	public String PostregisterClear() throws Exception {

		//logger.info("register");
		return "/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		//logger.info("get login");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		
		//logger.info("post Login");
		HttpSession session = req.getSession();
		User login = service.Login(user);

		if (login != null) {
			
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
		//logger.info("get logout");
		
		return "redirect:/";
	}

	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public void findid() throws Exception {
		//logger.info("get findid");
	}

	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public String postfindid(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		
		//logger.info("post findid");
		HttpSession session = req.getSession();
		String findtext = service.Findid(user);
		//logger.info(findtext);
		
		if (findtext != null) {
			session.setAttribute("findid", findtext);
			session.setAttribute("findtype", "ID");
			
			return "redirect:/findclear";
		}
		else {
			rttr.addFlashAttribute("error_nondata", "error");
			
			return "redirect:/findid";
		}
	}

	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findpw() throws Exception {
		//logger.info("get findpw");
	}

	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public String postfindpw(User user, HttpServletRequest req,RedirectAttributes rttr) throws Exception {
		
		//logger.info("post findpw");
		HttpSession session = req.getSession();
		int is_in = service.Findpw(user);
		int data_true = 1;
		session.setAttribute("error_nondata", "0");	
		
		if (is_in == data_true) {
			
			session.setAttribute("findtype", "PW");
			session.setAttribute("find_info", user);
			
			return "redirect:/findclear";
		}
		else {
			
			rttr.addFlashAttribute("error_nondata", "error");
			
			return "redirect:/findpw";
		}

	}

	@RequestMapping(value = "/findclear", method = RequestMethod.GET)
	public void findclear() throws Exception {
		//logger.info("get findclear");
	}

	@RequestMapping(value = "/findclear", method = RequestMethod.POST)
	public String postfindclear(String newpw,HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession(false);
		String findtype = (String)session.getAttribute("findtype"); 
		
		if(findtype == "PW") {
			User change_info = (User)session.getAttribute("find_info");
			change_info.setUserPW(newpw);
			service.ChangePW(change_info);
		}
				
		
		//logger.info("post findclear");
		
		return "redirect:/login";

	}
}
