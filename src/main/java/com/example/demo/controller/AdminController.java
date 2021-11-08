package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.modal.userDetails;
import com.example.demo.service.userServiceimpl;

@RestController
public class AdminController {
	
	
	@Autowired
	userServiceimpl userserviceimpl;

	
	
	 @GetMapping("/admin/")
	   public ModelAndView Admin()
	   {
		   
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("welcomeAdmin.jsp");
		  return mv;
	   }
	   
	
	
	
	
	   //restApi Show all users
	   @GetMapping("/admin/showall")
	   public List<userDetails> showAllUsers()
	   {
		   
		   List<userDetails> users = userserviceimpl.showAllUsers();
		   return users;
		      
	   }
	   
	   
	   //restApi get userdetails by id
	   @GetMapping("/admin/show/{username}")
	   public Optional<userDetails> showuser(@PathVariable("username") String userName)
	   {
		   
		  return userserviceimpl.findById(userName);
	   
	   }
	   
	   
	   //restApi get userdetails by id
	   @GetMapping("/admin/delete/{username}")
	   public ResponseEntity<Object> deleteuser(@PathVariable("username") String userName)
	   {
		   
		  userserviceimpl.deleteUser(userName);
		  
		  return new ResponseEntity<>("Account Deleted by Admin SuccessFully", HttpStatus.OK);
	   
	   }
	   
	   
	   		
	
}
