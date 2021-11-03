package com.example.demo.service;




import java.util.ArrayList;
import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Exception.BadRequestException;
import com.example.demo.Exception.ValidationException;


import com.example.demo.modal.userDetails;
import com.example.demo.repository.RegisterRepository;





@Service
public class userServiceimpl implements userService  {
	

	@Autowired	
	 RegisterRepository repo;
	
	
	public void saveuserDetails(userDetails user)   {
		
		   repo.save(user);
		
	}
	
	
	
	public Boolean isUserExists(String username)
	{
		
		Optional<userDetails> list = repo.findById(username);
				                     
		
		if (list.isPresent())
		{
			
			return true;
		}
			
		return false;
		
	}
	
	

	public Boolean isLoginApproved(String username, String password) throws ValidationException 

	{
		
		List<userDetails> userlist = repo.loginCheck(username,password);
		

		if (userlist.size()>0)
		{
			return true; 	
		}
		
		else
		{
			throw new ValidationException();
		}

    }
	


	
	
	public List<userDetails> getMatchedDetails(String username,String password)
	{
		
		List<userDetails> userlist = repo.loginCheck(username,password);
		
		
		return userlist;
		
		
	}

	
	
	
	
	
	
	//Rest Api
 
	public List<userDetails> showAllUsers(){
		List<userDetails> users = new ArrayList<userDetails>();
		for(userDetails user : repo.findAll()) {
			users.add(user);
		}
		
		return users;
	}

	
	
	public Optional<userDetails> findById(String username)
	{
		
			return repo.findById(username);

	}
	
	
	  public void addUser(userDetails userdetails) {
	       Optional<userDetails> user = repo.findById(userdetails.getUserName());
	        if (user.isPresent()) {
	            throw new BadRequestException(
	                    "User with" + userdetails.getUserName() + "is Already Exist");
	        }

	        repo.save(userdetails);
	    }




		
	
	
}
