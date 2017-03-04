package com.niit.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Controller
public class ExceptionHandling {
	Logger log=LoggerFactory.getLogger(HomeController.class);  //creating logging object for this class Home controller


    
    @ExceptionHandler(Exception.class)
	public String handleAllException( Exception ex) {

		return "404error";

	}
}
