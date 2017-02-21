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
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.OrderDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.UserDAO;
import com.niit.entityModel.User;

@Controller  //The @Controller annotation indicates that a particular class serves the role of a controller. 
public class HomeController {
Logger log=LoggerFactory.getLogger(HomeController.class);  //creating logging object for this class Home controller

    @Autowired(required = true) //@Autowired. Marks a constructor, field, setter method or config method as to be autowired by Spring's dependency injection facilities. 
    private UserDAO userDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private ProductDAO productDAO;
    
    @Autowired(required = true)
    private CategoryDAO categoryDAO;;

  //-------------------------------------------------------Admin page----------------------------------------------------------------------------------------------
	@RequestMapping(value = "/admin")							 //mapping for "/admin"
	public ModelAndView hello6() {
	    log.debug("inside controller for /admin");
		ModelAndView model = new ModelAndView("admin_home");
		return model;
	}

	//-------------------------------------------------------"/" page----------------------------------------------------------------------------------------------	
	@RequestMapping(value="/")
	public String indexpage(Model m,HttpServletRequest request, HttpSession session ){
		log.debug("inside / controller");
		session.invalidate();
		session = request.getSession(true);
		m.addAttribute("microcontrollerList",productDAO.getProductListbycategory("C1"));
		m.addAttribute("RoboticsList",productDAO.getProductListbycategory("C2"));
		m.addAttribute("toolsList",productDAO.getProductListbycategory("C5"));
		m.addAttribute("testingList",productDAO.getProductListbycategory("C8"));
		m.addAttribute("categoryList", categoryDAO.getCategoryList());
		log.debug("leaving / controller");
		return "index";
	}
	
	@RequestMapping(value="/aboutus")
	public String aboutus(Model m, HttpSession session){
		log.debug("inside aboutus controller");
		m.addAttribute("categoryList", categoryDAO.getCategoryList());
		
		String User = (String)session.getAttribute("User");
		m.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		m.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
		
		log.debug("leaving aboutus controller");
		return "aboutus";
	}
	

	//-------------------------------------------------------index page----------------------------------------------------------------------------------------------
	@RequestMapping(value="/indexpage")
	public String index(Model m,HttpSession session){
		log.debug("inside indexpage controller");
		m.addAttribute("categoryList", categoryDAO.getCategoryList());
		String User = (String)session.getAttribute("User");
		m.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		m.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
		m.addAttribute("microcontrollerList",productDAO.getProductListbycategory("C1"));
		m.addAttribute("RoboticsList",productDAO.getProductListbycategory("C2"));
		m.addAttribute("toolsList",productDAO.getProductListbycategory("C5"));
		m.addAttribute("testingList",productDAO.getProductListbycategory("C8"));
		m.addAttribute("categoryList", categoryDAO.getCategoryList());
		log.debug("leaving indexpage controller");
		return "index";
	}

	
	
	//-------------------------------------------------------Register----------------------------------------------------------------------------------------------
	@RequestMapping(value = "/register")							//mapping for "/register"
    public ModelAndView registerPage() {
		log.debug("inside controller for /register");
	ModelAndView model = new ModelAndView("register", "userModel", new User());
	model.addObject("categoryList", categoryDAO.getCategoryList());	
	log.debug("leaving register controller");
	return model;
	}

	
	//-------------------------------------------------------User profile page----------------------------------------------------------------------------------------------
    @RequestMapping(value="/userpage")
    public ModelAndView userr(@RequestParam("username") String username){
    	log.debug("inside userpage controller");
    	ModelAndView model= new ModelAndView("userpage");
    	model.addObject("categoryList", categoryDAO.getCategoryList());
    	model.addObject("userDetails", userDAO.getbyId(username));
    	log.debug("leaving userpage controller");
    	return model;
    }

	// ---------------------------------Register User------------------------------------
	@RequestMapping(value = "/registersuccess", method = RequestMethod.POST)				//mapping for "/registersuccess"
    public ModelAndView hello(@ModelAttribute("userModel") User userModel) {
	    log.debug("inside controller for /registersuccess");
	if (userDAO.validationRegistration(userModel)) { //chekcing registration process
		    log.debug("inside if registration is true");
			ModelAndView model = new ModelAndView("userpage");
			model.addObject("categoryList", categoryDAO.getCategoryList());
			model.addObject("userDetails", userDAO.getbyId(userModel.getUsername()));
			model.addObject("userModel", userModel);
			model.addObject("msg","Resgitered Succesfully");
			return model;
			
		} else {
		    log.debug("inside if registration is false");
			ModelAndView model = new ModelAndView("login");
			return model;

		}
	}
	
	//-------------------------------------------------------User Login----------------------------------------------------------------------------------------------
    @SuppressWarnings("unchecked")
    @RequestMapping(value = "/loginresult", method = RequestMethod.POST)
    public String login_session_attributes(@RequestParam("username") String username,@RequestParam("password") String password, HttpSession session, Model model) {
    	log.debug("inside loginresult controller");
    	String userid = SecurityContextHolder.getContext().getAuthentication().getName();
	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
		.getAuthentication().getAuthorities();
	String page = "";
	String role = "ROLE_USER";
	for (GrantedAuthority authority : authorities) {
	    System.out.println(authority.getAuthority());
	    if (authority.getAuthority().equals(role)) {
		session.setAttribute("Loggedin", "true");
		session.setAttribute("isUser", "true");
		session.setAttribute("User", userid);
		model.addAttribute("cartList", orderDAO.getOrderListbyname(userid));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(userid).size());
		model.addAttribute("microcontrollerList",productDAO.getProductListbycategory("C1"));
		model.addAttribute("RoboticsList",productDAO.getProductListbycategory("C2"));
		model.addAttribute("toolsList",productDAO.getProductListbycategory("C5"));
		model.addAttribute("testingList",productDAO.getProductListbycategory("C8"));
		
		page = "index";
		model.addAttribute("categoryList", categoryDAO.getCategoryList());

		break;
	    } else {
		session.setAttribute("Loggedin", "true");
		session.setAttribute("isAdmin", "true");
		session.setAttribute("User", userid);
		page = "admin_home";
		break;
	    }
	}
	return page;
    }

  //-------------------------------------------------------User Logout----------------------------------------------------------------------------------------------
    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, HttpSession session) {
    	log.debug("inside logout controller");
    	ModelAndView mv = new ModelAndView("index");
	session.invalidate();
	session = request.getSession(true);
		mv.addObject("loggedOut", "true");
		mv.addObject("microcontrollerList",productDAO.getProductListbycategory("C1"));
		mv.addObject("RoboticsList",productDAO.getProductListbycategory("C2"));
		mv.addObject("toolsList",productDAO.getProductListbycategory("C5"));
		mv.addObject("testingList",productDAO.getProductListbycategory("C8"));
		
	mv.addObject("categoryList", categoryDAO.getCategoryList());
	return mv;
    }
    
    @ExceptionHandler(Exception.class)
	public String handleAllException(Exception ex) {

		return "404error";

	}

	}


