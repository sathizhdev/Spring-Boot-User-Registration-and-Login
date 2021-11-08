package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Exception.ValidationException;
import com.example.demo.modal.userDetails;
import com.example.demo.service.userServiceimpl;

@RestController
public class userController {
	
	
	@Autowired
	userServiceimpl userserviceimpl;
	
	
	  //Rest APi 
	
	   @PostMapping("/user/add")
	    public ResponseEntity<Object> adduser( @RequestBody userDetails user) {
		   
	        userserviceimpl.addUser(user);
	        return new ResponseEntity<>("Account Created SuccessFully!", HttpStatus.OK);
	    }
	   
	   
	   @PostMapping("/user/logincheck")
	   public ResponseEntity<Object> Logincheck(@RequestBody userDetails user) throws ValidationException
	   {
		      
		   String userName = user.getUserName();
		   String password = user.getPassword();
		   
		   Boolean isLoginApproved1 = userserviceimpl.isLoginApproved(userName,password);
		   
		   if(isLoginApproved1) 
		       return new ResponseEntity<>("Logged in SuccessFully!", HttpStatus.OK);
		   else
			   return new ResponseEntity<>("Invalid Account Details!", HttpStatus.OK);
			   
	   }
	

}
