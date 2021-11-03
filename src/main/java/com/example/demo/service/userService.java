package com.example.demo.service;





import com.example.demo.Exception.ValidationException;
import com.example.demo.modal.userDetails;

public interface userService  {
	
	
	
	public Boolean isLoginApproved(String username, String password) throws ValidationException;
	
	public void saveuserDetails(userDetails user);
	

    public Boolean isUserExists(String username); 
    
   
    
}
	


