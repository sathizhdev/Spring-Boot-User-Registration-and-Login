package com.example.demo.controller;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Exception.ValidationException;
import com.example.demo.modal.userDetails;
import com.example.demo.service.userServiceimpl;

//controller


@RestController
public class FormController {
	

	@Autowired
	userServiceimpl userserviceimpl;
	
	List<userDetails> currentUserlist;
		
	
	//returns to login page(localhost:8886/)
	@RequestMapping("/")
	public ModelAndView registration(userDetails user)
	{ 
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register.jsp");
		return mv;
	}
	
	
	
	
	
	//returns to login page(localhost:8886/) using jsp
	@RequestMapping("/r")
	public String registration1(userDetails user)
	{ 
			return "register1.jsp";
	}
			
	

	
	
	//to save the user in userdetails table
	@RequestMapping("/Register")
	public ModelAndView LoginAuthen(userDetails user,Model model){
		
		Boolean userExist =userserviceimpl.isUserExists(user.userName);
		
		ModelAndView registerview = new ModelAndView();
		registerview.setViewName("register.jsp");
		ModelAndView welcomeview = new ModelAndView();
		welcomeview.setViewName("welcome.jsp");
		
		if (userExist)
		{	registerview.addObject("Error","User Already Exist! Try Different Username");
			
			return registerview;
		}
		
		else
			userserviceimpl.saveuserDetails(user);
		
		return welcomeview;
		
	}
	
	
	
	
	
	//logout functionality
	@RequestMapping("/logout")
	public ModelAndView logout(){
		
		ModelAndView loginview = new ModelAndView();
		loginview.setViewName("login.jsp");
		return loginview;
		
	}
	
	
	
	
	//to get back to login
	@RequestMapping("/login")
	public ModelAndView login(){
		
		ModelAndView login1view = new ModelAndView();
		login1view.setViewName("login.jsp");
		return login1view;
		
	}
	

	//to check the credentials
	@RequestMapping("/toLogin")
	public ModelAndView LoginCheck(HttpServletRequest request,userDetails res,Model model) throws ValidationException 
	{
		String user_Name = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
		Boolean isLoginApproved = userserviceimpl.isLoginApproved(user_Name,password);
		
		currentUserlist = userserviceimpl.getMatchedDetails(user_Name, password);
		
		
	    ModelAndView welcomeUserView = new ModelAndView();
	    welcomeUserView.setViewName("welcomeuser.jsp");
	    
	   
		
		welcomeUserView.addObject("username",user_Name);
		return welcomeUserView;		
		
		
			
	}
	
	
	@RequestMapping("/viewprofile")
	public ModelAndView viewProfile() {
		
		
		ModelAndView profileview = new ModelAndView();
		profileview.setViewName("profile.jsp");
		
		profileview.addObject("username",currentUserlist.get(0).getUserName());
		profileview.addObject("fName",currentUserlist.get(0).getFirstName());
		profileview.addObject("lName",currentUserlist.get(0).getLastName());
		profileview.addObject("address",currentUserlist.get(0).getAddress());
		profileview.addObject("pNumber",currentUserlist.get(0).getPhoneNo());
		
		return profileview;	
	}
	
	
	
	   @PostMapping("/add")
	    public ResponseEntity<Object> adduser( @RequestBody userDetails user) {
		   
	        userserviceimpl.addUser(user);
	        return new ResponseEntity<>("Account Created SuccessFully!", HttpStatus.OK);
	    }
	   
	   
	   @PostMapping("/logincheck")
	   public ResponseEntity<Object> Logincheck(@RequestBody userDetails user) throws ValidationException
	   {
		      
		   String userName = user.getUserName();
		   String password = user.getPassword();
		   
		   Boolean isLoginApproved = userserviceimpl.isLoginApproved(userName,password);
		   
		   if(isLoginApproved) 
		       return new ResponseEntity<>("Logged in SuccessFully!", HttpStatus.OK);
		   else
			   return new ResponseEntity<>("Invalid Account Details!", HttpStatus.OK);
			   
	   }
	
	   
	   //restApi Show all users
	   
	   @GetMapping("/showall")
	   public List<userDetails> showAllUsers()
	   {
		   
		   List<userDetails> users = userserviceimpl.showAllUsers();
		   return users;
		      
	   }
	   
	   
	   //restApi get userdetails by id
	   
	   
	   @GetMapping("/show/{username}")
	   public Optional<userDetails> showuser(@PathVariable("username") String userName)
	   {
		   
		  return userserviceimpl.findById(userName);
	   
	   }
	   		
}
