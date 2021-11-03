package com.example.demo.Exception;


import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.config.AppConfig;

@ControllerAdvice
public class exceptionlist  {
	
	
	@Autowired
	AppConfig appconfig;

@ExceptionHandler(SQLException.class)
public ModelAndView handleSQLException(SQLException sqlException )
{
System.out.print("db error");
ModelAndView mv = new ModelAndView();
mv.setViewName("error.jsp");
return mv;
}

@ExceptionHandler(ValidationException.class)
public ModelAndView handleValidationException(ValidationException validationException) {

	System.out.print("Inside the Validation Block");
	String loginError = appconfig.getProperty("loginError");
	ModelAndView mv = new ModelAndView("login");
	mv.addObject("feedback", loginError);

	return mv;

}

}

