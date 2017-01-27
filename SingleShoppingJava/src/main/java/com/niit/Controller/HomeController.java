package com.niit.Controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.UserDAO;
import com.niit.entityModel.User;

@Controller
public class HomeController {
Logger log=LoggerFactory.getLogger(HomeController.class);

    @Autowired(required = true)
    private UserDAO userDAO;

	@RequestMapping(value = "/admin")							 //mapping for "/admin"
	public ModelAndView hello6() {
	    log.debug("inside controller for /admin");
		ModelAndView model = new ModelAndView("admin");
		return model;
	}


	@RequestMapping(value = "/register")							//mapping for "/register"
	public ModelAndView registerPage(Model m) {
	    log.debug("insdie controller for /register");
	ModelAndView model = new ModelAndView("register", "userModel", new User());
		return model;
	}

	@RequestMapping(value = "/delete")							//mapping for "/delete"
	public ModelAndView hello5() {
	    log.debug("inside controller for delete");
	ModelAndView model = new ModelAndView("delete", "userModel", new User());
		return model;

	}

	
    @RequestMapping(value = "/loginpage") //mapping for "/login"
	public ModelAndView hello3() {
	    log.debug("inside controller for /login");
	ModelAndView model = new ModelAndView("loginpage", "userModel", new User());
		return model;

	}

	@RequestMapping(value = "/index")							//mapping for "/index"
	public ModelAndView hello4() {
	    log.debug("inside controller for /index");
		ModelAndView model = new ModelAndView("index");
		return model;

	}

	// ---------------------------------registration------------------------------------
	@RequestMapping(value = "/registersuccess", method = RequestMethod.POST)				//mapping for "/registersuccess"
    public ModelAndView hello(@ModelAttribute("userModel") User userModel) {
	    log.debug("inside controller for /registersuccess");
	//UserDAO userDAO = new UserDAOImpl();

	if (userDAO.validationRegistration(userModel)) { //chekcing registration process
		    log.debug("inside if registration is true");
			ModelAndView model = new ModelAndView("registersuccess");
			model.addObject("userModel", userModel);

			return model;
		} else {
		    log.debug("inside if registration is false");
			ModelAndView model = new ModelAndView("login");
			return model;

		}
	}
	

	// ---------------------------------delete-----------------------------------------
	@RequestMapping(value = "/deletesuccess")	//mapping for "/deletesuccess"
	public String deleteSuccess(@RequestParam("username") String username, @RequestParam("password") String password, Model m) {
	log.debug("inside controller for deletesuccess");
		m.addAttribute("msg", "Deleted");
		userDAO.userDelete(username, password);
		return "success";
	}

    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/loginresult", method = RequestMethod.POST)
    public String login_session_attributes(HttpSession session, Model model) {
	String userid = SecurityContextHolder.getContext().getAuthentication().getName();

	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
		.getAuthentication().getAuthorities();
	String page = "";

	String role = "ROLE_USER";
	for (GrantedAuthority authority : authorities) {
	    System.out.println(authority.getAuthority());
	    if (authority.getAuthority().equals(role)) {

		session.setAttribute("UserLoggedIn", "true");
		session.setAttribute("Username", userid);
		page = "loginsuccess";

		break;
	    } else {
		session.setAttribute("LoggedIn", "true");
		session.setAttribute("Administrator", "true");
		page = "admin";
		break;
	    }
	}
	return page;
    }

    //	// ---------------------------------login-----------------------------------------
    //	@RequestMapping(value = "/loginresult", method = RequestMethod.POST)					//mapping for "/loginresult"
    //	public ModelAndView hello4(@RequestParam("username") String username, @RequestParam("password") String password,
    //			Model m, HttpSession session) {
    //	    log.debug("inside controller for loginresult");
    //	//UserDAO userDAO = new UserDAOImpl();
    //
    //	if (userDAO.validationLogin(username, password)) { //username password validation
    //		    log.debug("inside if login is valid ");
    //	    ModelAndView model = new ModelAndView("loginresult", "userModel", new User()); //if yes adding loginresult page
    //			session.setAttribute("userModel", userDAO.getbyId(username));
    //
    //			if (userDAO.getbyId(username).getRole().equals("ROLE_ADMIN")) {				//checking ROLE
    //			    log.debug("inside if login is ROLE_ADMIN");
    //				model.addObject("isAdmin", true);
    //
    //			} else {										//if not valid user
    //			    log.debug("inside if login is ROLE_USER");
    //				model.addObject("isAdmin", false);
    //			}
    //			return model;
    //		} else {
    //		    log.debug("inside if login is not valid, try again");
    //	    ModelAndView model = new ModelAndView("login", "userModel", new User());
    //			model.addObject("msg", "check your password and username");
    //		return model;
    //		}
    //	}

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, HttpSession session) {
	ModelAndView mv = new ModelAndView("index");
	session.invalidate();
	session = request.getSession(true);
	mv.addObject("logoutMessage", "you are successfully logged out");
	mv.addObject("loggedOut", "true");
	return mv;
    }
	}


